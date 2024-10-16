<?php

namespace App\Http\Controllers;

use App\Author;
use App\Book;
use App\BookAuthor;
use App\Http\Resources\AuthorResource;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\Database\QueryException;

class AuthorBooksController extends Controller
{
    //
    public function store(int $bookId, Request $request)
    {
        try {
            // @TODO implement
            $validated = $request->validate([
                'name' => 'required|string',
                'surname' => 'required|string|max:1000',
            ]);
            $bookauthor_isable = BookAuthor::where("book_id", $bookId)->count();
            if ($bookauthor_isable)
            {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Book author Duplicate name',
                ], 422);
            }
            $book = Book::findOrFail($bookId);
            $author = new Author();
            $author->name = $validated['name'];
            $author->surname = $validated['surname'];
            $author->save();
            $book_auhtor = new BookAuthor();
            $book_auhtor->book_id = $bookId;
            $book_auhtor->author_id = $author->id;
            $book_auhtor->save();
            return new AuthorResource($author);
        }
        catch (ValidationException $e) {
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
