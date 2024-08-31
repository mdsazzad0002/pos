<form action="{{ route('admin.user.assingRole', $user->id) }}" method="post">
@csrf

    <div class="mb-2">
        @php
            $data_role = json_decode($user->getRoleNames())
        @endphp

        <select class="select2 form-control" name="role_id[]" id="" multiple>
            @foreach ($roles as $key => $role)
                <option value="{{ $role->id }}" @if(in_array($role->name, $data_role))
                    selected
                @endif>{{ $role->name }}</option>
            @endforeach
        </select>

    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

