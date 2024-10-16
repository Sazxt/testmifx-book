<?php

namespace App\Http\Controllers;

use App\Book;
use App\Http\Requests\PostBookRequest;
use App\Http\Resources\BookResource;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\Database\QueryException;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class BooksController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        // @TODO implement
        $books = Book::all();

        return BookResource::collection($books);
    }

    public function store(PostBookRequest $request)
    {
        // @TODO implement
        try {
            // Validasi input yang diperlukan
            $validated = $request->validate([
                'isbn' => 'required|string|max:13',
                'title' => 'required|string|max:255',
                'description' => 'required|string',
                'price' => 'required|numeric|min:0',
                'published_year' => 'required|integer|min:0',
                'authors' => 'required|array',
                'authors.*' => 'exists:authors,id',
            ]);
    
            // Membuat instance baru dari Book dan menyimpan data yang divalidasi
            $book = new Book();
            $book->isbn = $validated['isbn'];
            $book->title = $validated['title'];
            $book->description = $validated['description'];
            $book->price = $validated['price'];
            $book->published_year = $validated['published_year'];
            $book->save();
    
            // Menyinkronkan hubungan penulis (authors) dengan buku
            $book->authors()->sync($validated['authors']);
    
            // Mengembalikan response dengan resource buku yang baru dibuat
            return new BookResource($book);
    
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
