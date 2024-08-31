<div>
    <table class="table table-bordered table-striped table-hover">
        @foreach ($permissions as $key => $items)
        <tr>
            <td>
                {{ $key }}
            </td>
            <td>

                @foreach ($items as $item)
                <span class="badge badge-primary">{{ $item->name }}</span>
                @endforeach
            </td>
        </tr>
        @endforeach
    </table>
</div>
