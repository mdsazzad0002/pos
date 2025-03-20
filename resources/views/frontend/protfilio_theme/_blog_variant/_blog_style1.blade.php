    <!-- Blog Posts Section -->
    @php
        $blog_list = \App\Models\Blog::where('status', 1)->get();
        $blog_details_page = \App\Models\Page::where('page_type', 'blog_details')->first();
    @endphp

    <x-frontend_section :items="$blog_list" :info="$variant_info" class="blog_blog_style1" css="_blog_variant/_blog_style1.css">


        <div class="container-fluid">
            <div class="row">

                @foreach ($blog_list as $blog)
                    <div class="col-lg-4">
                        
                        @include('frontend.protfilio_theme._blog_style._blog_style1', ['blog'=> $blog])
                    </div>
                @endforeach


            </div>
        </div>

        </section><!-- /Blog Posts Section -->
    </x-frontend_section>
