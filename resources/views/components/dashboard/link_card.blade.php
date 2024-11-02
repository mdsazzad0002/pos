
<div class="{{ $sort }} @isset($column) {{ $column }} @endisset ">
    {{--  <input type="text" value="{{ $sort }}" name="" class="input_sort" id="">  --}}
    <div class="card small-box  @isset($bg) {{ $bg }} @endisset ">
        <div class="card-header card_count_loaded" data-items="@isset($items) {{ $items }} @endisset" data-where="@isset($where) {{ $where }} @endisset">
            <div class="inner">
                @isset($items)
                <div class="overlay dark">
                    <i class="fas fa-3x fa-sync-alt fa-spin"></i>
                </div>
                @endisset
                <h3><span>0</span></h3>
                <p>{{ Str::title($title ?? '') }}</p>
            </div>
            <div class="icon">
                <i class="{{ $icon ?? '' }}"></i>
            </div>
        </div>
        <a href="{{ $link ?? '' }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
    </div>

    <!-- small box -->
</div>

