<form action="{{ route('admin.profile.update') }}" method="post">
    @csrf
    @method('patch')
    <input type="text" required value="" placeholder="Current Password" name="old" class="form-control mb-2">
    <input type="text" required value=""placeholder="New Password" name="new" class="form-control mb-2">
    <input type="text" required value="" placeholder="Re Type password" name="re" class="form-control mb-2">

    <div class="text-end text-right">
        <button type="submit" class="btn btn-primary">Save</button>

    </div>
</form>
