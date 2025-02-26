{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}
@section('title', settings('category', 10))

{{-- Content Extends --}}
@section('content')

<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.category')
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
        <form class="row">
            <div class="col-md-6">
                <input type="search" class="form-control" placeholder="Enter your Keywords">
            </div>
            <div class="col-md-3 col-6">
                <button class="btn btn-submit"><i class="fa fa-search" aria-hidden="true"></i>
                    Search</button>
            </div>
        </form>

    
    <div class="order_container" id="sortable_items_data">
        @foreach($category as $key => $item)
        <div class="order_items" dragging="true" id="{{$item->id}}">
            <img class="w-100" src="{{dynamic_asset($item->upload_id)}}" />
            <hr class="mt-0 mb-1" />
            <div class="px-2">
                <div>{{$item->name ?? ''}}</div>
                <div class="action-button btn-group w-100 mt-1">
                    @can('category edit')
                    <button class='btn btn-warning ' data-dialog='modal-dialog-centered' data-title='{{ $item->name }}'
                        onclick='button_ajax(this)' data-href='{{ route('admin.category.edit', $item->id)
                        }}'><i class="fas fa-edit"></i></button>
                    @endcan

                    @can('category read')
                    <button class='btn btn-primary ' data-dialog=' modal-dialog-centered' onclick='button_ajax(this)'
                        data-title='{{ $item->name }}  info' data-href='{{ route('admin.category.show', $item->id)
                        }}'><i class="fa fa-eye" aria-hidden="true"></i>
                    </button>
                    @endcan

                    @can('category delete')
                    <button class='btn btn-danger ' data-title='{{ $item->name }}' onclick='button_ajax(this)'
                        data-href='{{ route('admin.category.delete', $item->id) }}'><i class="fa fa-trash"
                            aria-hidden="true"></i>
                    </button>
                    @endcan

                </div>
            </div>

        </div>
        @endforeach
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

</script>
@endsection