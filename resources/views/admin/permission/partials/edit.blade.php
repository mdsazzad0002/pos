<form action="{{ route('admin.permission.update', $permission->id) }}" method="POST">

    @method('put')
    @csrf
    <input type="text" class="form-control mb-2"  name="role_name" value="{{  $permission->name }}" placeholder="Enter your roles ">
    <div>
        <table class="table table-bordered table-striped table-hover">
            @foreach ($permission_list as $key => $items)
            <tr>
                <td>
                    {{ $key }}
                </td>
                <td>

                    @foreach ($items as $item)
                    <label for="target_id_{{ $item->id }}" class="badge badge-primary">
                        <input id="target_id_{{ $item->id }}" {{ in_array($item->id, $current_permission) ?'checked' : '' }} name="permission[]" type="checkbox" value="{{ $item->id }}">&nbsp;
                        {{ $item->name }}
                    </label>
                    @endforeach
                </td>
            </tr>
            @endforeach
        </table>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

