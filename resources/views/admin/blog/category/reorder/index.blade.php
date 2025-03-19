{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', settings('category', 10))

{{-- Content Extends --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.blog_category')
    </div>
</x-summary>

<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Category Order Management
        <div class="text-center">
            <button class="btn btn-warning" onclick="submit_category_order()">
                <i class="fa fa-save"></i> Save
            </button>
        </div>
    </div>
    <div class="card-body" style="max-height: 800px;overflow: auto;">
        <form class="row mb-3" id="search_search" >
            <div class="col-md-6">
                <input type="search" name="q" class="form-control" placeholder="Enter your Keywords">
            </div>
            <div class="col-md-3 col-6">
                <button class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i>
                    Search</button>
            </div>
        </form>

    
    <div class="order_container" id="sortable_items_data">
        @include('admin.blog.category.reorder.format_data')
    </div>
    <br>


</div>
</div>


<style>
    .order_container {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
        gap: 15px;
    }

    .order_container .order_items {
        border: 1px solid gray;
        text-align: center;
        padding: 0 0 10px 0;
        user-select: none;
        cursor: move;
        background-color: #fff;

    }
</style>


<script>
    let ids_update_data = [];

    function submit_category_order(){
        console.log(ids_update_data)
        $.ajax({
                url: '', // Your server endpoint
                method: 'POST',
                data: {
                    'orderid' :  ids_update_data,
                    '_token' : '{{  csrf_token() }}',
                    'method':'post',
                    'order':true,
                },
                success: function(response) {
                console.log("Order updated successfully:", response);
                    if(response){
                        flasher.success('Successfully  updated');
                    }
                },
                error: function(xhr, status, error) {
                    console.error("Error updating order:", error);
                }
            });
    }


    // ordering toArray
    function sorting(){
        $("#sortable_items_data").sortable({
            update: function(event, ui) {
                 ids_update_data = $(this).sortable("toArray");
                
            }
        });
        $("#sortable_items_data").disableSelection();
    }


    setTimeout(function(){
        sorting();
    },1500)


document.querySelector('#search_search').addEventListener('submit', function(e){
    e.preventDefault();
    let order_container = document.getElementById('sortable_items_data');
    $.ajax({
        url: '',
        method:'get',
        data:$(search_search).serialize(),
        success:function(response){
            order_container.innerHTML = response;
            sorting();
        }
    })
});

</script>
@endsection