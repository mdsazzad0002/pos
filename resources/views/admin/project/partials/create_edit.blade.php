{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@if ($project)
    @section('title', 'project Update')
@else
    @section('title', 'project Create')
@endif
{{-- Content Extends --}}
@section('content')

    <x-summary>
        <div class="row connectedSortable mb-2">
            @can('blog read')
                <x-dashboard.link_card column="col-lg-3 col-6" bg="bg-primary" count="Blog" title="blog" icon="far fa-payment"
                    link="{{ route('admin.blog.blog.index') }}" sort="sort_3" />
            @endcan
        </div>
    </x-summary>


    <div class="card">
        <div class="card-body">
            <form action="{{ $project ? route('admin.project.update', $project->id) : route('admin.project.store') }}"
                class="form_ajax_submit" method="post" enctype="multipart/form-data">
                @csrf

                @if ($project)
                    @method('put')
                @endif

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                project Information
                            </div>
                            <div class="card-body">


                                <div class="row">
                                    <div class="col-lg-12">
                                        <label for="">Title</label>
                                        <input type="text" name="title" class="form-control mb-2"
                                            placeholder="Enter title name" value="{{ $project->title ?? '' }}" required
                                            oninput="generateSlugMake(this, '#generateSlug')">
                                    </div>
                                    <div class="col-lg-12">
                                        <label for="">Slug</label>
                                        <input type="text" name="slug" class="form-control mb-2"
                                            placeholder="Enter slug name" id="generateSlug"
                                            value="{{ $project->slug ?? '' }}">
                                    </div>
                                </div>


                                <div class="row">



                                    <div class="col-lg-6">
                                        <label type="button" onclick="upload_select(this)"> Image <br>
                                            <input type="text" name="image" id="image" class="form-control mb-2"
                                                value="{{ $project ? $project->upload_id : 0 }}" hidden>
                                            <img style="max-height: 60px"
                                                src="{{ dynamic_asset($project ? $project->upload_id : 0) }}"
                                                alt="">
                                        </label>
                                    </div>



                                    <div class="col-lg-6">
                                        <label for="service"> Status <br />
                                            <input type="checkbox" checked class="" hidden name="status"
                                                value="0">
                                            <input type="checkbox" class="status toggle"
                                                {{ $project ? ($project->status ? 'checked' : '') : '' }}
                                                placeholder="status" name="status" id="service" value="1">
                                        </label>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="published_at">Published At</label>
                                        <input type="datetime-local" name="published_at" required class="form-control mb-2"
                                            id="published_at"
                                            value="{{ isset($project->published_at) ? date('Y-m-d\TH:i', strtotime($project->published_at)) : date('Y-m-d\TH:i') }}">
                                    </div>


                                    <div class="col-lg-12">
                                        <label for="">Short Description</label>
                                        <textarea type="text" name="short_description" class="form-control mb-2 " placeholder="short_description">{{ $project ? $project->short_description : '' }}</textarea>
                                    </div>
                                    <div class="col-lg-12">
                                        <label for="">Description</label>
                                        <textarea type="text" name="description" class="form-control mb-2 summernote" placeholder="Description">{{ $project ? $project->description : '' }}</textarea>
                                    </div>
                                    <div class="col-lg-12">
                                        <br>

                                        <div class="d-flex justify-content-end">
                                            <button class="btn btn-warning mr-1" type="button"
                                                onclick="document.querySelector('.form_ajax_submit').reset()">Reset</button>
                                            <button class="btn btn-warning" type="submit">Save</button>
                                        </div>
                                    </div>


                                </div>



                            </div>
                        </div>
                    </div>

                </div>


            </form>
        </div>
    </div>





@endsection
