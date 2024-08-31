{{-- Master Include  --}}
@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title', settings('Prof_ile', 10))

{{-- Content Extends  --}}
@section('content')
<div class="row">
    <div class="col-md-4">
        <div class="card">
            <form class="card-body" action="{{ route('admin.profile.update') }}" method="post" enctype="multipart/form-data">
                @csrf
                @method('patch')
                <label for="image_file" class="position-relative">
                    <i class="fas fa-edit position-absolute top-0 right-0 btn btn-warning" style="right:0; cursor:pointer"></i>
                    <img class="w-100" src="{{ dynamic_asset($user->upload_id) }}" alt="">
                    @can('profile edit')
                    <input type="file" required name="profile_pic" id="image_file" hidden>
                    @endcan
                </label>
                </f>
                <div class="card-footer">
                    <div>{{ $user->name }}</div>

                </div>
        </div>

    </div>

    <div class="col-md-8">
        <div class="card">
            @can('profile edit')
            <div class="card-header">
                <h4 class="d-inline">
                    {{ auth()->user()->name }}
                </h4>
                <div class="float-right">
                    <button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='Edit {{ $user->name }}'
                    onclick='button_ajax(this)'
                    data-href='{{ route('admin.profile.edit.info') }}'>Edit</button>
                </div>


            </div>
            @endcan
            <div class="card-body">
                <table class="table-bordered table table-hover table-striped boder">

                    <tr>
                        <td>Email</td>
                        <td>{{ $user->email }}</td>
                    </tr>
                    <tr>
                        <td>Role</td>
                        <td>{{ $user->getRoleNames() }}</td>
                    </tr>
                    <tr>
                        <td>Created Date</td>
                        <td>{{ $user->created_at->format('d-M-Y') }}</td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center">
                            <button class='btn btn-warning '
                            data-dialog='modal-dialog-centered'
                            data-title='Change Password {{ $user->name }}'
                            onclick='button_ajax(this)'
                            data-href='{{ route('admin.profile.edit.password') }}'>Change Password</button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
</div>




@endsection

@push('js')
<script>
    $('#image_file').on('change', function(e) {
        $(this).parents('form').submit();
    })

</script>
@endpush
