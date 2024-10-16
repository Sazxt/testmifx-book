<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BookResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $rate = 14000;
        $priceRupiah = 'Rp ' . number_format($this->price * $rate, 2, ',', '.');

        $avgReview = $this->reviews()->avg('review') ?? 0;
        $reviewCount = $this->reviews()->count();

        return [
            'id' => $this->id,
            'isbn' => $this->isbn,
            'title' => $this->title,
            'description' => $this->description,
            'published_year' => $this->published_year,
            'authors' => AuthorResource::collection($this->whenLoaded('authors')),
            'book_contents' => BookContentResource::collection($this->whenLoaded('bookContents')),
            'price' => $this->price,
            'price_rupiah' => $priceRupiah,
            'review' => [
                'avg' => round($avgReview, 1),
                'count' => $reviewCount
            ],
        ];
    }
}
