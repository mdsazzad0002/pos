{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', settings('footerlinksubheadings', 10))

{{-- Content Extends --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        footerlinksubheading
        <div>
            @can('footerlinksubheading create')
            <button class="btn btn-primary" onclick="button_ajax(this)"
                data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-title="Add New  footerlinksubheading"
                data-href="{{ route('admin.footerlinksubheading.create') }}">+ Add New footerlinksubheading</button>
            @endcan
        </div>
    </div>
    <div class="card-body">
        {{-- @php
            $page_items =
        @endphp --}}
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">Pages</div>
                    <div class="card-body">
                        <ul>
                            @foreach ($pages as $items)
                                <li data-id="{{ $items->id }}">{{  $items->name ?? '' }}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
                        Heading
                    </div>
                    <div class="card-body">

                    </div>
                </div>
                <ul id="sortable_items_data">
                    @foreach ($headers as $items)
                     <li data-id="{{ $items->id }}">{{  $items->name ?? '' }}</li>
                    @endforeach
                </ul>
            </div>
        </div>


    </div>
</div>


@endsection

@push('css')
<style>
    #sortable_items_data {
        list-style-type: none;
        padding: 0;
    }

    #sortable_items_data li {
        margin: 10px;
        padding: 10px;
        background-color: #575757;
        cursor: pointer;
    }
</style>
@endpush

@push('js')

<script>
    function sorting(){

$("#sortable_items_data").sortable({
    update: function(event, ui) {
        var sortedIDs = $(this).sortable("toArray");
        $.ajax({
            url: '{{ route('admin.header.store') }}', // Your server endpoint
            method: 'POST',
            data: {
                order: sortedIDs,
                '_token' : '{{  csrf_token() }}'
            },
            success: function(response) {
              console.log("Order updated successfully:", response);
            },
            error: function(xhr, status, error) {
                console.error("Error updating order:", error);
            }
        });
    }
});
$("#sortable_items_data").disableSelection();

}
sorting()


</script>
@endpush
