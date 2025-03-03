


@extends('layout.frontend_ajuba.master')

@section('title', $homepage->name)

@section('content')
    @foreach ($homepagemanage as $items)
    <div class="page_container page_container{{ $items->id }}" >
        <button class="btn btn-info menu_of_settings_" id="menu_of_settings_page_container{{ $items->id }}" onclick=" update_settings(this);
            "><i class="fa fa-cog"></i></button>
            @include('frontend.protfilio_theme.'.$items->key, ['variant_info'=> $items])
    </div>
    @endforeach


    <script>

function update_settings(thi) {
    window.parent.postMessage(
        {
            id_selected: thi.getAttribute('id'),
        },
        '*' // Ideally, replace '*' with a specific origin for security
    );
}


    </script>
@endsection








@push('css')
<style>



.page_container{
    position:relative;
    border: 4px dotted #0077d9;
}

button.menu_of_settings_{
    position: absolute;
    top: 50%;
    right: 0;
    left:unset;
    z-index: 9999;
}


    .modal.show .modal-dialog{
        background: white;

    }
    .modal .modal-dialog{
        max-width: 500px;
    }

    .menu_of_settings_page_container{
        list-style: none;
    }
    .menu_of_settings_page_container .menu_of_settings_page select,
    .menu_of_settings_page_container .menu_of_settings_page input{
        padding: 10px;
        height:40px;
    }



    .menu_of_settings_page_container .menu_of_settings_page  input[type=checkbox] {
        position: relative;
        top: 0;
        height:60px;
        width:0;
    }

    .menu_of_settings_page_container .menu_of_settings_page input[type=checkbox]::after{
        content: '';
        border:2px solid #ff0b0b;
        width: 80px;
        height: 40px;
        position: absolute;
        cursor:pointer;
        border-radius:3px;

    }
    .menu_of_settings_page_container .menu_of_settings_page input[type=checkbox]:checked::after{
            border:2px solid #008000;
    }

    .menu_of_settings_page_container .menu_of_settings_page  input[type=checkbox]::before{
        content: 'Off';
        width: 40px;
        height: 40px;
        position: absolute;
        background:red;
        left:0;
        transition:0.3s;
        color:white;
        text-align:center;
        display:flex;
        align-items:center;
        justify-content:center;
        border-radius:3px;
    }
    .menu_of_settings_page_container .menu_of_settings_page  input[type=checkbox]:checked::before{
        right:0;
        content: 'On';
        left:40px;
        background:green;
    }

    .menu_of_settings_page_container .menu_of_settings_page {
        position: relative;
    }

    .menu_of_settings_page_container .menu_of_settings_page .close_button_section{
        position: absolute;
        position: absolute;
        top: 10px;
        right: 10px;
        z-index: 9;
    }

</style>
@endpush


