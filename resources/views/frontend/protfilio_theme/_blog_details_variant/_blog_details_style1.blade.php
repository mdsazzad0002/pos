 <!-- Main Sections -->

 @php
    $blog = \App\Models\Blog::where('slug', $request->slug)->first();
    $blog_details_page = \App\Models\Page::where('page_type', 'blog_details')->first();
@endphp

 <x-frontend_section :items="$blog" :info="$variant_info" class="blog_blog_details_style1" css="_blog_details_variant/_blog_details_style1.css">
 <!-- Blog Detail Section Start -->
 <section class="blog-detail-section bg-lightest-gray py-40">
     <div class="container-fluid">
         <div class="row row-gap-4">

             <div class="col-xxl-12 col-xl-12">
             




                 <div class="blog-detail-wrapper bg-white">
                     <div class="main-image mb-32">
                         <img src="{{ dynamic_asset($blog->upload_id ?? 0) }}" alt="" class="br-15">
                     </div>
                     <div class="d-flex align-items-center gap-16 mb-16">
                         ⊙<p class="fw-500 dark-black">{{ $blog->created_at?->format('M d, Y') }}</p>
                     </div>
                     <h3 class="mb-16 fw-700">{{ $blog->title ?? '' }}</h3>
                    <div>
                        {{ $blog->short_description ?? '' }}
                    </div>
                    <br>
                      <div class="light-gray mb-16">
                         {!! $blog->description !!}
                     </div>


                     @include('frontend.protfilio_theme._share_style._share_style1', ['name'=>$blog->title, 'url'=>url()->full(), 'short_description'=>$blog->short_description])


                 </div>
             </div>
         </div>
     </div>
 </section>
 <!-- Blog Detail Section End -->

 <!-- Blog Section Start -->
 <section class="blog-section bg-lightest-gray py-40">
     <div class="container-fluid">
         <div class="top-bar mb-16">
             <h5>Latest Blogs</h5>
             <div class="slider-arrow">
                 <button class="arrow btn-prev" data-slide="blog-slider">
                     <svg xmlns="http://www.w3.org/2000/svg" width="33" height="32" viewBox="0 0 33 32"
                         fill="none">
                         <path
                             d="M12.8057 23C12.8057 20 10.0057 16 6.80566 16M6.80566 16C8.639 16 12.8057 15 12.8057 9M6.80566 16H25.8057"
                             stroke="#1B1918" stroke-width="2"></path>
                     </svg>
                 </button>
                 <button class="arrow btn-next" data-slide="blog-slider">
                     <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32"
                         fill="none">
                         <path
                             d="M19.3545 23C19.3545 20 22.1545 16 25.3545 16M25.3545 16C23.5212 16 19.3545 15 19.3545 9M25.3545 16H6.35449"
                             stroke="#1B1918" stroke-width="2"></path>
                     </svg>
                 </button>
             </div>
         </div>
         <div class="blog-slider" data-parent="blog-slider">

             @foreach ($blog->relatedBlogs() as $item)
                 <div class="col-lg-4">
                     @include('frontend.protfilio_theme._blog_style._blog_style1', ['blog' => $item])
                 </div>
             @endforeach

         </div>
     </div>
 </section>
 <!-- Blog Section End -->
 </x-frontend_section>
