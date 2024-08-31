
<table class="table table-hover table-bordered table-striped ajax_content">
    <thead>
        <tr>
            <th>Name</th>
            <th>Key</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($settings as $item)
        <tr>
            <td>{{ Str::title(str_replace('_',' ',$item->name ))}}
            </td>
            <td>{{ $item->key }}

            </td>

            <td>
                <form action="{{ route('setting.store.update') }}">
                    <input  hidden type="text" name="key" value="{{ $item->key }}" id="">
                    <input hidden type="text" name="name" value="{{ $item->name }}" id="">
                    <div class="row">
                        <div class="col-8">
                            <input class="form-control" type="text" name="value" id="" value="{{ $item->value }}">

                        </div>
                        <div class="col-4">
                            <button onclick="submit_setting(this)" type="button" class="btn btn-primary">Save</button>

                        </div>
                    </div>

                </form>
            </td>

        </tr>
        @endforeach
    </tbody>
</table>

<div class="d-flex justify-content-end mt-3 ajax_paginate">
    {{ $settings->appends(Request::all())->links() }}
</div>



