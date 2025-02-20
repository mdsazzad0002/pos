<div>
    @if ($message)
    <div class="alert alert-success d-flex align-items-center" role="alert">
        <i class="fas fa-check-circle"></i> &nbsp;
        <div>
            {{ $message }}
        </div>
    </div>
    @endif

    <div class="alert alert-warning d-flex align-items-center" role="alert">
        <i class="fas fa-check-circle"></i> &nbsp;
        <div>
            Same time one Element work. if enabled many applied first active element.
        </div>
    </div>

    <table id="footerlinkheading" class="table table-bordered table-striped table-hover">
        <thead>


            <th>
                Title
            </th>
            <th>
                Image
            </th>
            <th>
                Background
            </th>
            <th>
                Status
            </th>
        </thead>
        <tbody>
            @foreach ($header_styles as $key => $header_style)
            <tr wire:key="post-field-{{ $header_style['id'] }}">
                <td>{{ $header_style['title'] }}</td>
                <td><img class="img-fluid" src="{{ asset($header_style['upload_id']) }}" alt=""></td>
                <td>
                    <div>
                        <input type="color" class="form-control" wire:model="header_styles.{{ $key }}.background_color"
                            id="background_color_{{ $key }}">
                    </div>
                </td>
                <td>
                    <div>
                        <input type="checkbox" class="toggle" wire:model="header_styles.{{ $key }}.status"
                            id="status_{{ $key }}" @if($header_style['status']==1) checked @endif value="1">
                    </div>
                </td>
            </tr>
            @endforeach

        </tbody>
    </table>
    <div class="text-center">
        <button class="btn btn-warning" onclick="reset_alert()" wire:click="update">Update</button>
    </div>
</div>


<script>
    function reset_alert(){
            setTimeout(() => {
                @this.set('message', '');
            },2500)
        }
</script>