
<div class="{{ $sort }} @isset($column) {{ $column }} @endisset ">
    {{--  <input type="text" value="{{ $sort }}" name="" class="input_sort" id="">  --}}
    <div class="card small-box  @isset($bg) {{ $bg }} @endisset ">
        <div class="card-header">
            <div class="inner">
                <h3>{{ $count ?? 0 }}</h3>
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

