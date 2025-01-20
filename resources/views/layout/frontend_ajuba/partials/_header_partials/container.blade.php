<div class="menu-button-right menu-{{ $key }}">
    @if(isset($menu_items[$key]) && count( $menu_items[$key]) > 0 && $filter_page)
    @php
        $i= 0;

    @endphp
        @foreach ($menu_items[$key]  as $items)

                @if($items->preset == 1 && $items->key_name == 'category_menu1')
                    @if($i > 0)
                        </ul>
                    </div>
                        @php
                            $i = 0;
                        @endphp
                    @endif
                    @include('layout.frontend_ajuba.partials._header_partials.preset.category1')
                    @continue
                @endif

                @if($i == 0)
                    @php
                        $i++;
                    @endphp
                     <div class="main-menu__nav">
                        <ul class="main-menu__list">
                @endif

                @include('layout.frontend_ajuba.partials._header_partials.preset.items1_link')


        @endforeach
        @if($i > 0)
            </ul>
        </div>
        @endif
    @endif

        @if($key == 'right')
            <a href="#" class="main-menu__toggler mobile-nav__toggler ml-auto">
                <img src="{{asset('uploads/')}}/icons/menu-2.png" alt="">
                Menu
            </a>
        @endif
    </div>
