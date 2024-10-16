<?php

namespace App\Http\Controllers;

use App\Book;
use App\BookReview;
use App\Http\Requests\PostBookReviewRequest;
use App\Http\Resources\BookReviewResource;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\Database\QueryException;

class BooksReviewController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        $books_review = BookReview::all();

        return BookReviewResource::collection($books_review);
    }

    public function store(int $bookId, PostBookReviewRequest $request)
    {
        try {
            // @TODO implement
            $bookReview = new BookReview();
            // Validasi input untuk review
            $validated = $request->validate([
                'user_id' => 'required|exists:users,id',
                'review' => 'required|integer|min:1|max:5',
                'comment' => 'required|string|max:1000',
            ]);

            $book = Book::findOrFail($bookId);
            $bookReview->book_id = $book->id;
            $bookReview->user_id = $validated['user_id'];
            $bookReview->review = $validated['review'];
            $bookReview->comment = $validated['comment'];
            $bookReview->save();
            return new BookReviewResource($bookReview);
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

    public function destroy(int $bookId, int $reviewId, Request $request)
    {
        // @TODO implement
        try {
            $book = Book::findOrFail($bookId);
            $review = $book->reviews()->findOrFail($reviewId);
    
    
            $review->delete();
    
            return response()->json(['message' => 'Review deleted successfully'], 200);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json(['message' => 'Book or review not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['message' => 'An error occurred while deleting the review'], 500);
        }
    }
}
