<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/users/create', 'AuthController@create');

Route::group(['middleware' => ['check.admin']], function () {
    // Crud Books
    Route::get('/books', 'BooksController@index');
    Route::get('/books/{bookId}', 'BooksController@details');
    Route::post('/books', 'BooksController@store');
    Route::delete('/books/{bookId}', 'BooksController@destroy');
    Route::put('/books/{bookId}', 'BooksController@update');
    // Reviews
    Route::post('/books/{id}/reviews', 'BooksReviewController@store');
    Route::delete('/books/{bookId}/reviews/{reviewId}', 'BooksReviewController@destroy');
    // Books Content
    Route::post('/books/{bookId}/content', 'BooksContentController@store');
    // Author
    Route::post('/books/{bookId}/author', 'AuthorBooksController@store');
});