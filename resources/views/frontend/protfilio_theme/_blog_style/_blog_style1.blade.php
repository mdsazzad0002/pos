
    <link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_blog_style/_blog_style1.css') }}">
    <article class="__blog_style1">

        <div class="post-img">
            <img src="{{ dynamic_asset($blog->image) }}" alt="" class="img-fluid">
        </div>

        <a href="{{ url($blog_details_page->slug . '/' . $blog->slug) }}">
            <h2 class="title">
                {{ $blog->title }}
            </h2>

            <div>
                {{ $blog->short_description }}
            </div>
        </a>
        <div class="meta">
            ⊙ <span class="date">{{ $blog->created_at->format('d M Y') }}</span>
        </div>

    </article>
