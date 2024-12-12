{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}

{{-- Content Extends --}}
@section('content')
    <div class="card">
        <div class="card-body">
            <div class="form-group w-75 mx-auto border py-4 px-2 rounded m-2 ">
                <label for="usr">Enter Text :</label>
                <input type="text" class="form-control" id="usr" name="username">
                <a href="#" class="btn btn-danger btn-lg mt-2" id="btn" onclick="go();">Create barcode</a>
            </div>
        
        
            <div class="mx-auto w-75 p-4 text-center">
                <!--     <svg id="barcode" ></svg> -->
        
                <canvas id="barcode" download>
        
                </canvas>
        
                <br>
                <a href="" class="btn btn-danger btn-lg mt-2" id="btn" download="Barcode.jpg"
                    onclick="downloadBarCode(this);">Download barcode</a>
            </div>
        </div>
    </div>
@endsection

@push('js')
@endpush


{{-- <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <script src="https://cdn.jsdelivr.net/jsbarcode/3.6.0/JsBarcode.all.min.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
        integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

    <title>Document</title>
</head>


    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="#">Barc <i class="fab fa-osi"></i>de</a>
    </nav>

    <div class="form-group w-75 mx-auto border py-4 px-2 rounded m-2 ">
        <label for="usr">Enter Text :</label>
        <input type="text" class="form-control" id="usr" name="username">
        <a href="#" class="btn btn-danger btn-lg mt-2" id="btn" onclick="go();">Create barcode</a>
    </div>


    <div class="mx-auto w-75 p-4 text-center">
        <!--     <svg id="barcode" ></svg> -->

        <canvas id="barcode" download>

        </canvas>

        <br>
        <a href="" class="btn btn-danger btn-lg mt-2" id="btn" download="Barcode.jpg"
            onclick="downloadBarCode(this);">Download barcode</a>
    </div>




    </div> --}}
