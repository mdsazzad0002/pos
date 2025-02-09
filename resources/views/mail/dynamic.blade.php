<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $mailInfo_data['title'] }}</title>
</head>
<body>
    @php

        $template_file =  \App\Models\mail\MailTemplate::where('name', $mailInfo_data['template'])->first();
        $temptemplate = $template_file->template;
        $key_words=  explode(',', $template_file->keywords);

        foreach ($key_words as $key => $value) {
            $temptemplate = str_replace('`'.$value.'`', $mailInfo_data[$value], $temptemplate); //Replace Code
        }


    @endphp

        {{$mailInfo_data['subject']}}
        {!! $temptemplate !!}

        @if (isset($mailInfo_data['additional_text']))
            {!! $mailInfo_data['additional_text'] !!}
        @endif


</body>
</html>
