
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
                        <th>Action</th>
                        <th>Permission</th>
                        <th>Name</th>
                    </tr>
                </thead>

            </table>
        </div>
    </div>
@endsection


@push('js')

<script>
    var datatableM ='';
     $(document).ready(function() {
         datatableM = $('#rolesTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ route('admin.permission.index') }}',
            columns: [
                { data: null, name: null, orderable: false, searchable: false, render: function (data, type, row, meta) {
                    return meta.row + meta.settings._iDisplayStart + 1;
                }},
                { data: 'edit', name: 'edit', orderable:false, searchable:false },
                { data: 'view', name: 'view', orderable:false, searchable:false },
                { data: 'name', name: 'name' },
                { data: 'created_at', name: 'created_at', title:'Date', render(data, type, row, meta) {
                    return moment(data).format('DD-MM-YYYY hh:mm:ss A');
                }},

            ],
            buttons: true,
            dom: database_dom_format,

        });
    });
</script>

<script>
    function target_base(thi){
        var check_element = true;
        if(thi.checked == true){
            check_element = true
        }else{
            check_element = false
        }

        $(thi).parents('tr').find('td:nth-child(2) input').each(function(key, element){
            //console.log(element)

            if(check_element == true){
                element.checked = true;
            }else{
                element.checked = false;
            }
        })
    }

    function selectPermission(thi){
        var check_element = true;
        if(thi.checked == true){
            check_element = true
        }else{
            check_element = false
        }

        $(thi).parents('table').find('tr td:nth-child(2) input').each(function(key, element){
            //console.log(element)

            if(check_element == true){
                element.checked = true;
            }else{
                element.checked = false;
            }
        })
    }
</script>

@endpush
