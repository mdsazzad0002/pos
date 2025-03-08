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