<ul id="sortable_items_data">
    @foreach ($headers as $items)

    <li id="{{ $items->id }}">

        <span>
            &nbsp;
            &nbsp;

            <span  class="btn btn-warning btn-sm"  data-dialog="modal-dialog-centered" onclick="button_ajax(this)" data-title="{{ $itms->name ?? '' }}"  data-href="{{ route('admin.header.edit', $items->id) }}">
                <i class="fas fa-edit"></i>

            </span>
            <i class="fas fa-ellipsis-v"></i><i class="fas fa-ellipsis-v"></i><i class="fas fa-ellipsis-v"></i>
            <div class="d-inline">
                {!!  $items->name ?? '' !!}  <span class="btn btn-primary btn-sm"

                onclick="copyToClipboard('{{ url($items->slug) }}')"
                ondblclick="window.open('{{ url($items->slug) }}', '_blank')"

                title="Click to Copy and Dabble click to browse Link {{ url($items->slug) }}"><i class="fas fa-clipboard-list"></i></span>
            </div>
            <div class="d-inline">
                Position: {{ $items->position ?? '' }}
            </div>
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
