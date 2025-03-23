
    <link rel="stylesheet" href="{{ asset('frontend/protfilio_theme/css/_project_style/_project_style1.css') }}">
    <article class="__project_style1">

        <div class="post-img">
            <img src="{{ dynamic_asset($project->image) }}" alt="" class="img-fluid"/>
        </div>

        <a href="{{ url($project_details_page->slug . '/' . $project->slug) }}">
            <h2 class="title">
                {{ $project->title }}
            </h2>

            <div>
                {{ $project->short_description }}
            </div>
        </a>
        <div class="meta">
            ⊙ <span class="date">{{ $project->created_at->format('d M Y') }}</span>
        </div>

    </article>
