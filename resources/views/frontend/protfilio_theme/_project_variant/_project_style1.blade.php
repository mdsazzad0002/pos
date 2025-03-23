    <!-- project Posts Section -->
    @php
        if ($variant_info->is_details_page) {
            $project_list = \App\Models\Project::where('status', 1)->paginate($variant_info->items_show);
        } else {
            $project_list = \App\Models\Project::where('status', 1)->latest()->limit($variant_info->items_show)->get();
        }
        $project_details_page = \App\Models\Page::where('page_type', 'project-details')->first();
        @endphp



    <x-frontend_section :items="$project_list" shortbutton="true" :info="$variant_info" class="project_project_style1" css="_project_variant/_project_style1.css">


        <div class="container-fluid">
            <br>
            <div class="row">

                @foreach ($project_list as $project)
                    <div class="col-lg-4 col-md-6 col-xl-3 mb-3">
                        
                        @include('frontend.protfilio_theme._project_style._project_style1', ['project'=> $project])
                    </div>
                @endforeach


            </div>
        </div>

    </x-frontend_section>
