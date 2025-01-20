<li>
    <a href="{{ url($items->is_page ? $items->page->slug : $items->slug) }}"
        class="@if(Request::is($items->is_page ? $items->page->slug : $items->slug)) active @endif">
        {{ $items->name ?? '' }}
    </a>
</li>
