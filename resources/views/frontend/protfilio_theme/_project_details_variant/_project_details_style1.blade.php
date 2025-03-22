 <!-- Main Sections -->

 @php
    $project = \App\Models\Project::where('slug', $request->slug)->first();
    $project_details_page = \App\Models\Page::where('page_type', 'project_details')->first();
@endphp

 <x-frontend_section :items="$project" :info="$variant_info" class="project_project_details_style1" css="_project_details_variant/_project_details_style1.css">
 <!-- project Detail Section Start -->
 <section class="project-detail-section bg-lightest-gray py-40">
     <div class="container-fluid">
         <div class="row row-gap-4">

             <div class="col-xxl-12 col-xl-12">
             




                 <div class="project-detail-wrapper bg-white">
                     <div class="main-image mb-32">
                         <img src="{{ dynamic_asset($project->upload_id ?? 0) }}" alt="" class="br-15">
                     </div>
                     <div class="d-flex align-items-center gap-16 mb-16">
                         ⊙<p class="fw-500 dark-black">{{ $project->created_at?->format('M d, Y') }}</p>
                     </div>
                     <h3 class="mb-16 fw-700">{{ $project->title ?? '' }}</h3>
                    <div>
                        {{ $project->short_description ?? '' }}
                    </div>
                    <br>
                      <div class="light-gray mb-16">
                         {!! $project->description !!}
                     </div>


                     @include('frontend.protfilio_theme._share_style._share_style1', ['name'=>$project->title, 'url'=>url()->full(), 'short_description'=>$project->short_description])


                 </div>
             </div>
         </div>
     </div>
 </section>
 <!-- project Detail Section End -->

 </x-frontend_section>
