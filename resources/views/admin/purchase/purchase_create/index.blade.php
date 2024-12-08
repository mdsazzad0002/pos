{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('purchase', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Purchuse Create
    </div>
    <form class="card-body purchause_create" method="POST" action="{{ route('admin.purchase.store') }}">
        @csrf
        <div class="row mb-3">
            <div class="col-md-6 mb-2">
                <div class="input-group">
                    <select  name="supplierID" required class="form-control select2 input-group-prepend" data-ajax="true" data-url="{{ route('admin.supplier.select') }}" id="">
                        <option value="">-- supplier -- </option>
                    </select>
                    @can('user create')

                    <button class="btn btn-primary input-group-append" onclick="button_ajax(this)" data-title="Add New  supplier" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-href="{{ route('admin.supplier.create') }}">+ Add New supplier</button>
                    @endcan

                </div>
            </div>
            <div class="col-md-6 mb-2">
                <div class="input-group">
                    <div class="input-group-prepend" title="it helped to auto inset when use scanner">
                        <div class="input-group-text">
                            <input type="checkbox" class="input-group-prepend" id="scan_match_andInput">
                        </div>
                    </div>
                    <input type="text"  data-url="{{ route('admin.product.select') }}" class="form-control input-group-append" id="product_filter" placeholder="Enter product name">

                </div>
            </div>
        </div>


        <div class="row">
            {{--  product entry section  --}}
            <div class="col-md-6 overflow-auto">
                <table id="users" class="table table-bordered table-striped table-hover">
                    <thead>

                        <th>
                            Name
                        </th>

                        <th>
                            Quantaty
                        </th>
                        <th>
                            Price
                        </th>
                        <th>
                            Total
                        </th>
                        <th>
                            X
                        </th>
                    </thead>
                    <tbody id="data_insert_list">


                    </tbody>
                    <tfoot class="foma_output_footer">
                        <tr>
                            <td></td>
                            <td class="total_quantaty">0</td>
                            <td class="total_price">0</td>
                            <td class="total_subtotal">0</td>
                            <td></td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            {{--  end product entry section  --}}
            <div class="col-md-6 overflow-auto">
                <table class="container_searching_result table table-border table-hover border table-bordered">

                </table>
            </div>
        </div>

        <div class="text-end">
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
    </form>
</div>

<style>
    .curent_parents_data input{
        max-width: 85px;;
    }
</style>



@endsection

@push('js')
    <script>
      function format_query_result(data_items){
        data_items = data_items.items;
        var product_filter ='';
        Object.keys(data_items).forEach(function(data){

            var items_variant_data = (JSON.parse(data_items[data].variant_option));
            var html_data_key = '';
            var html_data_value = '';
            if(data_items[data].variant_on == 1){
               
                var item_data_key = items_variant_data.vairant_value.split(",");
                if(item_data_key.length > 0){
                    html_data_key+=`<select class="form-control">`
                    item_data_key.forEach(element => {
                        console.log(element);
                        html_data_key+=`<option value="${element}">${element}</option>`
                    });
                    html_data_key+=`</select>`
                }
                
                
                var item_data_key = items_variant_data.variant_key.split(",");
                if(item_data_key.length > 0){
                    html_data_value+=`<select class="form-control">`
                    item_data_key.forEach(element => {
                        console.log(element);
                        html_data_value+=`<option value="${element}">${element}</option>`
                    });
                    html_data_value+=`</select>`
                }
            }

            product_filter +=`<tr class="single_item_result ">
                <td class="img p-1">
                    <img src="${data_items[data].image_url}" style="max-width:150px; height:40px" alt="">
                </td>
                <td>
                    <div class="d-flex ">
                        ${data_items[data].variant_on == 1 ? html_data_key + html_data_value : '' }
                    </div>
                </td>
                <td class="name p-1">
                    ${data_items[data].text}
                </td>

                <td class="action p-1">
                    <button type="button" type="button" class="btn btn-primary" onclick="items_add_from_quey(${data_items[data].id}, '${data_items[data].text}')">+</button>
                </td>
            </tr>`;
        })

        return product_filter;
      }


        var search_var = document.querySelector('#product_filter');
        search_var.addEventListener('input', function(e){
            e.preventDefault();

            if ($('#scan_match_andInput').is(':checked')) {
                $.ajax({
                    type:'get',
                    url:'{{route('admin.product.single_filter')}}',
                    data:{
                        q:this.value,
                    },
                    success:function(data){
                        data = JSON.parse(data);
                        if(data != null){
                            items_add_from_quey(data.id, data.text);
                        }else{
                            flasher.error('Not Found data');
                        }

                        search_var.value ='';
                    }

                });
            } else {
                 $.ajax({
                    type:'get',
                    url:this.getAttribute('data-url'),
                    data:{
                        q:this.value,
                    },
                    success:function(data){
                        data = JSON.parse(data);
                    var data_format = format_query_result(data);
                        $('.container_searching_result').html(data_format);
                    }

                })
            }




        })

        function items_add_from_quey(id, name){
            var data_format = ` <tr class="curent_parents_data items${id}">
                            <td>
                                ${name}
                                <input type="text" hidden name="productId[]" value="${id}">
                            </td>
                            <td>
                                <input oninput="calclute_inline('.items${id}')" type="number" class="quantaty" name="quantaty[]" value="1">
                            </td>
                            <td>
                                <input oninput="calclute_inline('.items${id}')" type="numberr" class="price" name="price[]" value="0">
                            </td>
                            <td>

                                <input disabled value="" class="total"/>
                            </td>
                            <td>
                                <div>
                                    <button type="button" class="btn btn-danger" onclick="this.closest('.curent_parents_data').remove()">X</button>
                                </div>
                            </td>
                        </tr>`;

                        var finding = document.querySelectorAll('#data_insert_list .items'+id);
                        if(finding.length > 0){
                            var prev_val = finding[0].querySelector('.quantaty');
                            var current_value = parseInt(prev_val.value)+1;
                            prev_val.value = current_value;
                        }else{
                            $('#data_insert_list').append(data_format);
                        }

                        calclute_inline('.items'+id)

        }


        function calclute_inline(class_name){
            var items = document.querySelector(class_name+' .quantaty').value;
            var price = document.querySelector(class_name+' .price').value;
            var total = document.querySelector(class_name+' .total');
            total.value = items * price

            calculateSubtotal()
        }

        function calculateSubtotal() {
            var items = document.querySelectorAll('#data_insert_list tr');
            var totalItems = 0;
            var totalPrice = 0;
            var totalSubtotal = 0;

            items.forEach(function(element) {
                // Safely parse integer values and default to 0 if not valid
                var quantity = parseInt(element.querySelector('.quantaty').value) || 0;
                var price = parseInt(element.querySelector('.price').value) || 0;
                var subtotal = parseInt(element.querySelector('.total').value) || 0;

                totalItems += quantity;
                totalPrice += price;
                totalSubtotal += subtotal;
            });

            // Update the DOM elements with the calculated totals
            document.querySelector('.total_subtotal').innerHTML = totalSubtotal;
            document.querySelector('.total_price').innerHTML = totalPrice;
            document.querySelector('.total_quantaty').innerHTML = totalItems;
        }


        $('.purchause_create').on('submit', function(e){
            e.preventDefault();
            $.ajax({
                type: this.method,
                url: this.action,
                processData: false,              // Required for FormData
                contentType: false,
                data: new FormData(this),
                success:function(data){
                    data = JSON.parse(data);
                    if(data.type =='success'){
                        flasher.success(data.title)

                        $('#data_insert_list').html('');
                        {{--  $(this).reset()  --}}

                        calculateSubtotal()
                    }else{
                        flasher.error(data.title);
                    }
                },
                error: function (xhr, status, error) {
                    var response_error = JSON.parse(xhr.responseText);
                    if(response_error.errors){
                        const errors = response_error.errors;
                        var i = 0;
                        Object.keys(errors).forEach(function(key) {
                            i++
                            if(i==1){
                                $('input[name="'+key+'"]').focus();
                            }
                            errors[key].forEach(function(errorMessage) {
                                flasher.error(errorMessage);
                            });
                        });
                    }else if(response_error.message){
                        flasher.error(response_error.message);
                    }
                }
            })
        })
    </script>
@endpush
