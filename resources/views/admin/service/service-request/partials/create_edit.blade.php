{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@if ($blog)
    @section('title', 'blog Update')
@else
    @section('title', 'blog Create')
@endif
{{-- Content Extends --}}
@section('content')

    <x-summary>
        <div class="row connectedSortable mb-2">
            @include('admin.dashboard._cards.blog')
        </div>
    </x-summary>


    <div class="card">
        <div class="card-body">
            <form action="{{ $blog ? route('admin.blog.blog.update', $blog->id) : route('admin.blog.blog.store') }}"
                class="form_ajax_submit" method="post" enctype="multipart/form-data">
                @csrf

                @if ($blog)
                    @method('put')
                @endif

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                blog Information
                            </div>
                            <div class="card-body">


                                <div class="row">
                                    <div class="col-lg-12">
                                        <label for="">Title</label>
                                        <input type="text" name="title" class="form-control mb-2"
                                            placeholder="Enter title name" value="{{ $blog->title ?? '' }}" required
                                            oninput="generateSlugMake(this, '#generateSlug')">
                                    </div>
                                    <div class="col-lg-12">
                                        <label for="">Slug</label>
                                        <input type="text" name="slug" class="form-control mb-2"
                                            placeholder="Enter slug name" id="generateSlug" value="{{ $blog->slug ?? '' }}">
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <label for="">Category</label>
                                        <div class="input-group mb-3">
                                            <select type="text" name="category[]"
                                                data-url="{{ route('admin.blog.category.select') }}" data-ajax="true"
                                                class="form-control input-group-prepend select2 category_select" multiple
                                                placeholder="Username" aria-label="Username"
                                                aria-describedby="basic-addon1">

                                                @if ($blog)
                                                    @foreach ($blog->categories as $category)
                                                        <option value="{{ $category->id ?? 0 }}" selected>
                                                            {{ $category->name ?? '' }}</option>
                                                    @endforeach
                                                @endif
                                            </select>
                                            <button type="button" class="btn btn-primary input-group-append"
                                                data-dialog=" modal-dialog-scrollable modal-dialog-centered"
                                                onclick="button_ajax(this)" data-title="Add New  Category"
                                                data-href="{{ route('admin.blog.category.create') }}">+</button>
                                        </div>
                                    </div>


                                    <div class="col-lg-6">
                                        <label type="button" onclick="upload_select(this)"> Image <br>
                                            <input type="text" name="image" id="image" class="form-control mb-2"
                                                value="{{ $blog ? $blog->upload_id : 0 }}" hidden>
                                            <img style="max-height: 60px"
                                                src="{{ dynamic_asset($blog ? $blog->upload_id : 0) }}" alt="">
                                        </label>
                                    </div>



                                    <div class="col-lg-6">
                                        <label for="service"> Status <br />
                                            <input type="checkbox" checked class="" hidden name="status"
                                                value="0">
                                            <input type="checkbox" class="status toggle"
                                                {{ $blog ? ($blog->status ? 'checked' : '') : '' }} placeholder="status"
                                                name="status" id="service" value="1">
                                        </label>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="published_at">Published At</label>
                                        <input type="datetime-local" name="published_at" required class="form-control mb-2"
                                            id="published_at"
                                            value="{{ isset($blog->published_at) ? date('Y-m-d\TH:i', strtotime($blog->published_at)) : date('Y-m-d\TH:i') }}">
                                    </div>


                                    <div class="col-lg-12">
                                        <label for="">Short Description</label>
                                        <textarea type="text" name="short_description" class="form-control mb-2 " placeholder="short_description">{{ $blog ? $blog->short_description : '' }}</textarea>
                                    </div>
                                    <div class="col-lg-12">
                                        <label for="">Description</label>
                                        <textarea type="text" name="description" class="form-control mb-2 summernote" placeholder="Description">{{ $blog ? $blog->description : '' }}</textarea>
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
