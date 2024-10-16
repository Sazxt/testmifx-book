<?php

namespace App\Http\Controllers;

use App\Book;
use App\BookContent;
use App\Http\Resources\BookContentResource;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\Database\QueryException;

class BooksContentController extends Controller
{
    //
    public function store(int $bookId, Request $request)
    {
        try {
            // @TODO implement
            $bookcontent = new BookContent();
            // Validasi input untuk review
            $validated = $request->validate([
                'label' => 'required|string',
                'title' => 'required|string|max:1000',
                'page_number' => 'required|integer|max:100',
            ]);

            $book = Book::findOrFail($bookId);
            $bookcontent->book_id = $book->id;
            $bookcontent->label = $validated['label'];
            $bookcontent->title = $validated['title'];
            $bookcontent->page_number = $validated['page_number'];
            $bookcontent->save();
            return new BookContentResource($bookcontent);
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
