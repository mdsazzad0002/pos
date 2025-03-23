@php
if (!function_exists('data_rander')) {
    function data_rander($items) {
        $output = "
            <li  class='dd-item' data-id='{$items->id}' >
                <div class='d-flex align-items-center justify-content-between'>
                    <span>
                        <span class='btn btn-warning btn-sm' data-dialog='modal-dialog-centered' onclick='button_ajax(this)'
                            data-title='{$items->name}' data-href='" . route('admin.header.edit', $items->id) . "'>
                            <i class='fas fa-edit'></i>
                        </span>
                        <span class='dd-handle'>
                            <i class='fas fa-ellipsis-v'></i><i class='fas fa-ellipsis-v'></i><i class='fas fa-ellipsis-v'></i>
                        </span>
                        <div class='d-inline'>
                            {$items->name}
                            <span class='btn btn-primary btn-sm' onclick='copyToClipboard(\"" . url($items->slug) . "\")'
                                ondblclick='window.open(\"" . url($items->slug) . "\", \"_blank\")'
                                title='Click to Copy and Double Click to Browse Link " . url($items->slug) . "'>
                                <i class='fas fa-clipboard-list'></i>
                            </span>
                        </div>
                        <div class='d-inline'>
                            Position: {$items->position} {$items->id}
                        </div>
                    </span>
                    <span>
                        <input type='checkbox' hidden name='status' value='0'>
                        <input type='checkbox' class='toggle' " . ($items->status ? 'checked' : '') . "
                            placeholder='Service Status' name='status' id='status' data-id='{$items->id}' value='1'>
                    </span>
                    <span class='item_trash_btn' onclick='delete_header_item({$items->id})'>
                        <i class='fas fa-trash'></i>
                    </span>
                </div>";

        // Check if the item has sub-items
        if ($items->sub_items->count() > 0) {
            $output .= "<ol class='dd-list'>"; // Nested list for child items
            foreach ($items->sub_items as $subitems) {
                $output .= data_rander($subitems); // Recursively call data_rander for sub-items
            }
            $output .= "</ol>"; // Close nested list
        }

        $output .= "</li>"; // Close main list item
        return $output;
    }
}


@endphp


<div class="dd nestable" id="sortable_items_data">
    <ol class="dd-list">


    @foreach ($headers as $items)
        {!! data_rander($items) !!}
      
    @endforeach


    </ol>
</div>
