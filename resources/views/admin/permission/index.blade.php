
{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('role_permision', 10))

{{--  Content Extends  --}}
@section('content')
    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <h5>
                Roles
            </h5>
            <div>
                @can('role create')

                <button class="btn btn-primary" data-dialog="modal-lg modal-dialog-scrollable modal-dialog-centered" onclick="button_ajax(this)" data-title="Add New  Roles" data-href="{{ route('admin.permission.create') }}">+ Add New Roles</button>
                @endcan
            </div>
        </div>
        <div class="card-body table-responsive">
            <table id="rolesTable" class="table table-bnorderd table-hover table-striped border">
                <thead>
                    <tr>
                        <th>SI</th>
                        <th>Name</th>
                        <th>Permission</th>
                        <th>Action</th>
                    </tr>
                </thead>

            </table>
        </div>
    </div>
@endsection


@push('js')

<script>
    var datatableM =  $(document).ready(function() {
        $('#rolesTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ route('admin.permission.index') }}',
            columns: [
                { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                    return meta.row + meta.settings._iDisplayStart + 1;
                }},
                { data: 'name', name: 'name' },
                { data: 'view', name: 'view', orderable:false, searchable:false },
                { data: 'edit', name: 'edit', orderable:false, searchable:false },
               // { data: 'birth_date', name: 'birth_date' },
                //{ data: 'hired_on', name: 'hired_on' }
            ],
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print' // Define available buttons
             ],
             "dom": 'lBTrftip',
        });
    });
</script>
@endpush
