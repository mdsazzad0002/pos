    <!-- project Posts Section -->
    @php
        $project_list = \App\Models\Project::where('status', 1)->get();
        $project_details_page = \App\Models\Page::where('page_type', 'project-details')->first();
    @endphp

    <x-frontend_section :items="$project_list" :info="$variant_info" class="project_project_style1" css="_project_variant/_project_style1.css">


        <div class="container-fluid">
            <div class="row">

                @foreach ($project_list as $project)
                    <div class="col-lg-4 col-md-6 col-xl-3">
                        
                        @include('frontend.protfilio_theme._project_style._project_style1', ['project'=> $project])
                    </div>
                @endforeach


            </div>
        </div>

        </section><!-- /project Posts Section -->
    </x-frontend_section>
