<form action="{{ route('admin.permission.update', $permission->id) }}" method="POST">

    @method('put')
    @csrf
    <input type="text" class="form-control mb-2"  name="role_name" value="{{  $permission->name }}" placeholder="Enter your roles ">
    <div>
        <table class="table table-bordered table-striped table-hover">
            <tr>
                <td>
                    <div>
                        <label for="selectAll_permission">Select All
                            <input type="checkbox"  onchange="selectPermission(this)" id="selectAll_permission">
                        </label>
                    </div>
                </td>
                <td></td>
            </tr>
            @foreach ($permission_list as $key => $items)
                 {{-- @can( $key.' read') --}}
                    <tr>
                        <td>
                            <label for="{{ $key }}" >
                                {{ $key }}
                                <input type="checkbox" onchange="target_base(this)" id="{{ $key }}">
                            </label>
                        </td>
                        <td>

                            @foreach ($items as $item)
                            @if( auth()->user()->can($item->name) || config('app.env') == 'local')
                                    <label for="target_id_{{ $item->id }}" class="badge badge-primary">
                                        <input id="target_id_{{ $item->id }}" {{ in_array($item->id, $current_permission) ?'checked' : '' }} name="permission[]" type="checkbox" value="{{ $item->id }}">&nbsp;
                                        {{ $item->name }}
                                    </label>
                                @endcan
                            @endforeach
                        </td>
                    </tr>
                {{-- @endcan --}}
            @endforeach
        </table>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

