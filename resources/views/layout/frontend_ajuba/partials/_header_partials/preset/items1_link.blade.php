<li>
    <a href="{{ url($items->is_page ? $items->page->slug : $items->slug) }}"
        class="@if(Request::fullUrlIs(url($items->is_page ? $items->page->slug : $items->slug))) active @endif">
        {{ $items->name ?? '' }}
    </a>
    {{-- @dd($items->sub_items); --}}

    @if ($items->sub_items->count() > 0)
        <ul class="sub-menu">
            @foreach ($items->sub_items as $single_sub_item)
                <li>
                    <a href="{{ url($single_sub_item->is_page ? $single_sub_item->page->slug : $single_sub_item->slug) }}"
                        class="@if(Request::fullUrlIs(url($single_sub_item->is_page ? $single_sub_item->page->slug : $single_sub_item->slug))) active @endif">
                        {{ $single_sub_item->name ?? '' }}
                    </a>
                </li>
            @endforeach
        </ul>
    @endif
    
</li>
