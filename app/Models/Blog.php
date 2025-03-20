<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\BlogCategory;
class Blog extends Model
{
    use HasFactory;
    public function categories()
    {
        return $this->belongsToMany(BlogCategory::class);
    }

    public function relatedBlogs()
    {
        return Blog::whereHas('categories', function ($query) {
                $query->whereIn('blog_categories.id', $this->categories->pluck('id')); // Match categories
            })
            ->where('id', '!=', $this->id) // Exclude current blog
            ->latest()
            ->limit(12) // Limit to 12 related blogs
            ->get();
    }
}
