<ul id="sortable_items_data">
    @foreach ($headers as $items)

    <li  data-dialog="modal-dialog-centered" onclick="button_ajax(this)" data-title="{{ $itms->name ?? '' }}"  data-href="{{ route('admin.header.edit', $items->id) }}" id="{{ $items->id }}">

        <span>
            <i class="fas fa-ellipsis-v"></i><i class="fas fa-ellipsis-v"></i><i class="fas fa-ellipsis-v"></i>
            {{  $items->name ?? '' }}
        </span>

        <span>
            Type : {{  $items->is_page ? 'Page' : ($items->is_page ? 'Text' : 'Category Menu') }}
        </span>

        <span>
            <input type="checkbox" checked="" class="" hidden="" name="status" value="0">
            <input type="checkbox" class="toggle" {{ $items->status ? 'checked' : '' }} placeholder="Service Status" name="status" id="status" data-id="{{ $items->id }}" value="1">
        </span>

        <span class="item_trash_btn" onclick="delete_header_item({{ $items->id }})">
            <i class="fas fa-trash"></i>
        </span>

    </li>
    @endforeach
</ul>
