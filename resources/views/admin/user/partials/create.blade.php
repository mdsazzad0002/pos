<form action="{{ route('admin.user.store') }}" method="post">
@csrf

    <input type="text" name="name" class="form-control mb-2" placeholder="Enter your name">
    <input type="email" name="email" class="form-control mb-2" placeholder="Enter your email">
    <div class="mb-2">

        <select class="select2 form-control" name="role_id[]" id="" multiple>
            @foreach ($roles as $key => $role)
            <option value="{{ $role->id }}">{{ $role->name }}</option>
            @endforeach
        </select>

    </div>
    <input type="password" name="password" class="form-control mb-2" placeholder="Enter your password">

    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>

