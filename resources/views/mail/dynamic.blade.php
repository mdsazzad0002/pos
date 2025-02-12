<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $mailInfo_data['title'] }}</title>
    <style>
        .d-flex{
            display:flex;

        }
        .flex-coloumn{
            flex-direction: column;
        }
        .h3{
            font-size: 28px;
            font-weight: 500;
            letter-spacing: 0;
            line-height: 1.5em;
            padding-bottom: 15px;
            position: relative;
            margin-bottom:9px
        }
        .text-center{
            text-align: center;
        }

        iframe{
            width: 100%;
            display: block;
        }
        

    </style>
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

        <div class="h3 text-center">
            {{$mailInfo_data['subject']}}
        </div>
        <div class="">
            {!! $temptemplate !!}
        </div>
        <div class="d-flex flex-column">
            @if (isset($mailInfo_data['additional_text']))
                {!! $mailInfo_data['additional_text'] !!}
            @endif
        </div>

</body>
</html>
