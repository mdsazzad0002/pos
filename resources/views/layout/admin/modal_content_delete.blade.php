<form method="POST" action="{{ str_replace('/delete','', Request::url()) }}">
    <div class="text-center">
        @csrf
        @method('delete')
        <div class="text-center text-danger display-2">
            <i class="fas fa-trash"></i>
        </div>
        <div class="h3">Do you want Delete</div>
        <div class="p">NB: You Can'not Recover after delete</div>
    </div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-danger" type="submit">Confirm</button>
    </div>
</form>
