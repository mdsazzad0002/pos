{{-- Master Include --}}
@extends('layout.admin.master')

{{-- Define Site Title --}}

{{-- Content Extends --}}
@section('content')
    <div class="card">
        <div class="card-body">
            <div class="form-group w-75 mx-auto border py-4 px-2 rounded m-2 ">

                <form class="bar_code_generate" action="{{ route('admin.product.barcode.generate') }}" method="get" enctype="multipart/form-data">


                <div class="row">
                    <div class="col-md-6 col-lg-4 my-2">
                        <select type="text" name="product" data-url="{{ route('admin.product.select') }}"
                            data-ajax="true" class="form-control input-group-prepend select2"
                            placeholder="Username" aria-label="Username"
                            aria-describedby="basic-addon1">

                            @if($products)
                                <option value="{{ $products->id ?? 0 }}">
                                    {{ $products?->name . ( $products->variant_on == 0 ? '('. settings('currency_symbol', 9).' '. $products?->selling_price .')' :  ' (Variant) ') }}</option>
                            @else
                                <option value="0">unit</option>
                            @endif

                        </select>
                    </div>

                    <div class="col-md-6 col-lg-4 py-2">
                        <select type="text" name="variant" data-url="{{ route('admin.product.variant.select') }}?product_id={{ $products->id }}"
                            data-ajax="true" class="form-control input-group-prepend select2"
                            placeholder="Username" aria-label="Username"
                            aria-describedby="basic-addon1">

                                <option value="0">SELECT AN VARIANT IF AVAILABLE</option>


                        </select>
                    </div>
                    <div class="col-md-6 col-lg-4 my-2">
                       <input class="form-control" type="number" value="1" id="quantity_code">
                    </div>

                    <div class="col-md-6 col-lg-4">
                        <button class="btn btn-primary w-100" type="submit">Generate Barcode</button>

                    </div>


                </div>

            </form>

            <div class="for_print_output">
                <style>
                    .container_every_code{
                        display: inline-block;
                        background: white;
                        padding: 6px;
                        color: black;
                        margin-bottom: 10px;
                        margin-top: 10px;
                        margin-right: 10px;
                        text-align:center;
                    }
                </style>
                <div class="output_of_html">
    
                </div>
            </div>
            


                <button  class="btn btn-danger btn-lg mt-2 btn-block" id="btn" onclick="downloadBarCode(this);">Print</button>

           
        </div>
    </div>


@endsection

@push('js')

<script>
    function format_render_barcode(data){
        let render_data = '';
        let quantity_code = $('#quantity_code').val();

        for(var i = 0; i < quantity_code; i++){
            render_data += data;
        }
        return render_data;
    }

    
        document.querySelector('.bar_code_generate').addEventListener('submit', function(e){
            e.preventDefault();

            var formData =  $(this).serialize();  // Use FormData to collect form data

            $.ajax({
                type: this.method,
                url: this.action,
                data: formData,
                processData: false,  // Prevent jQuery from processing the data
                contentType: false,  // Prevent jQuery from setting the content type
                success: function(data){
                    console.log(data);
                    let format_code =  format_render_barcode(data);
                    $('.output_of_html').html(format_code)
                }
            });
        });

        function downloadBarCode(){
            var dataElement = document.querySelector('.for_print_output');  // Get the element with id="data"
        
            // Create a temporary div to hold the content to print
            var printWindow = window.open('', '', 'height=600,width=800');  // Open a new window for printing
            
            printWindow.document.write('<html><head><title>Print</title></head><body>');
            printWindow.document.write(dataElement.innerHTML);  // Write the content of #data into the new window
            printWindow.document.write('</body></html>');
            
            printWindow.document.close();  // Close the document stream
            printWindow.print();  // Trigger the print dialog
        }
</script>
@endpush
