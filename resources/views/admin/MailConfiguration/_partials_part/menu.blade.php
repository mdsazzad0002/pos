<button class="nav-link active rounded-none text-left" id="v-pills-smtp-tab" data-toggle="pill" data-target="#v-pills-smtp" type="button" role="tab" aria-controls="v-pills-smtp" aria-selected="true">SMTP Configration</button>

@foreach ($mail_template as $key => $id)
    <button class="nav-link  rounded-none text-left" id="{{ $key }}" data-toggle="pill" data-target="#{{ $key }}" type="button" role="tab" aria-controls="{{ $key }}" aria-selected="true">{{ Str::title(str_replace('_', ' ', $key)) }}</button>
@endforeach
