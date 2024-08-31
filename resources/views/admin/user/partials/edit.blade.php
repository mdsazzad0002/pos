<form action="{{ route('admin.user.update', $User->id) }}" method="post">
    @csrf
    @method('put')

        <input type="text" name="name" class="form-control mb-2" value="{{ $User->name }}" placeholder="Enter your name">
        <input type="text" name="email" class="form-control mb-2" value="{{ $User->email }}" placeholder="Enter your email">
        <div class="mb-2">
            @php
            $data_role = json_decode($User->getRoleNames())
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

