<form action="{{ route('admin.profile.update') }}" method="post">
    @csrf
    @method('patch')
    <input type="text" value="{{ $user->name }}" name="name" class="form-control mb-2">

    <div class="text-end text-right">
        <button type="submit" class="btn btn-primary">Save</button>

    </div>
</form>
