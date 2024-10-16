<?php

namespace App\Http\Controllers;

use App\Book;
use App\Http\Requests\PostBookRequest;
use App\Http\Resources\BookResource;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\Database\QueryException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use App\Jobs\RetreiveBookContentsJob;

class BooksController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        $query = Book::with(['authors', 'bookContents', 'reviews']);

        if ($request->has('title')) {
            $searchTerm = $request->input('title');
            $query->where(function($q) use ($searchTerm) {
                $q->where('title', 'LIKE', '%' . $searchTerm . '%')
                ->orWhereRaw('LOWER(title) LIKE ?', ['%' . strtolower($searchTerm) . '%']);
            });
        }
        if ($request->has('authors')) {
            $authorIds = explode(',', $request->input('authors'));
            $query->whereHas('authors', function($q) use ($authorIds) {
                $q->whereIn('authors.id', $authorIds);
            });
        }
    
        $sortColumn = $request->input('sortColumn', 'title');
        $sortDirection = $request->input('sortDirection', 'ASC');
        
        if ($sortColumn === 'avg_review') {
            $query->withAvg('reviews', 'review')
                ->orderBy('reviews_avg_review', $sortDirection);
        } else {
            $query->orderBy($sortColumn, $sortDirection);
        }
    
        $perPage = 15;
        $books = $query->paginate($perPage);
    
        return BookResource::collection($books);
    }

    public function store(PostBookRequest $request)
    {
        try {
            if (is_array($request->input('isbn'))) {
                throw ValidationException::withMessages([
                    'isbn' => ['ISBN must not be an array'],
                ]);
            }
            $validated = $request->validate([
                'isbn' => 'required|numeric|unique:books,isbn|digits:13',
                'title' => 'required|string|max:255',
                'description' => 'required|string',
                'price' => 'required|numeric|min:0',
                'published_year' => 'required|integer|min:0',
                'authors' => 'required|array|min:1',
                'authors.*' => 'integer|exists:authors,id',
            ]);
    
            $book = new Book();
            $book->isbn = $validated['isbn'];
            $book->title = $validated['title'];
            $book->description = $validated['description'];
            $book->price = $validated['price'];
            $book->published_year = $validated['published_year'];
            $book->save();
    
            $book->authors()->sync($validated['authors']);
            $book = Book::with(['authors', 'bookContents'])->find($book->id);
    
            RetreiveBookContentsJob::dispatch($book);
    
            return (new BookResource($book))
                ->response()
                ->setStatusCode(201);
    
        } catch (ValidationException $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (QueryException $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Database error',
                'error' => $e->getMessage()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'An unexpected error occurred',
                'error' => $e->getMessage()
            ], 422);
        }
    }
    

    public function destroy(int $bookId, Request $request)
    {
        // @TODO implement
        try {
            $book = Book::findOrFail($bookId);

            $book->delete();
    
            return response()->json(['message' => 'Book deleted successfully'], 200);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json(['message' => 'Book not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['message' => 'An error occurred while deleting the Book'], 500);
        }
    }

    public function details(int $bookId, Request $request)
    {
        try {
            $book = Book::with(['authors', 'bookContents'])
            ->findOrFail($bookId);
            return new BookResource($book);

        } catch (ModelNotFoundException $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Book not found'
            ], 404);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'An unexpected error occurred',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function update(int $bookId, Request $request)
    {
        try {
            // Find the book
            $book = Book::findOrFail($bookId);
    
            $data_book = $request->validate([
                'title' => 'sometimes|required|string|max:255',
                'author' => 'sometimes|required|string|max:255',
                'description' => 'sometimes|required|string',
                'price' => 'sometimes|required|numeric|min:0',
                'published_year' => 'sometimes|required|numeric|min:0',
            ]);
    
            // Update the book
            $book->update($data_book);
    
            return response()->json([
                'message' => 'Book updated successfully',
                'book' => new BookResource($book)
            ], 200);
    
        } catch (ValidationException $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
    
        } catch (QueryException $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Database error',
                'error' => $e->getMessage()
            ], 500);
    
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'An unexpected error occurred',
                'error' => $e->getMessage()
            ], 500);
        }
    }

}
