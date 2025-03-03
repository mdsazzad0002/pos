{{--  Master Include  --}}
@extends('layout.admin.master')

{{--  Define Site Title  --}}
@section('title', settings('purchase', 10))

{{--  Content Extends  --}}
@section('content')
<div class="card">
    <div class="card-header d-flex align-items-center justify-content-between">
        Purchase Create
    </div>
    <form class="card-body purchause_create" method="POST" action="{{ route('admin.purchase.store') }}">
        @csrf
        <div class="row mb-3">
            <div class="col-md-6 mb-2">
                <div class="row">
                    <div class="col-6">
                        <div class="input-group">
                                 <select  name="supplierID" required class="form-control select2 input-group-prepend" data-ajax="true" data-url="{{ route('admin.supplier.select') }}" id="">
                                    <option value="">-- supplier -- </option>
                                </select>
                         
                            @can('supplier create')
                            <div class="input-group-append">
                                 <button class="btn btn-primary input-group-append" onclick="button_ajax(this)" data-title="Add New  supplier" data-dialog=" modal-dialog-scrollable modal-dialog-centered" data-href="{{ route('admin.supplier.create') }}">
                                    <span>+</span>
                                </button>
                            </div>
                            @endcan

                        </div>
                    </div>
                    <div class="col-6">
                        <div class="input-group">

                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    Buying Date
                                </div>
                            </div>
                            <input type="date" class="form-control" name="buying_date" value="{{ date('Y-m-d') }}" id="">

                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-6 mb-2">
                <div class="input-group">
                    <div class="input-group-prepend" title="it helped to auto inset when use scanner">
                        <div class="input-group-text">
                            <input type="checkbox" class="input-group-prepend" id="scan_match_andInput">
                        </div>
                    </div>
                    <input type="text"  data-url="{{ route('admin.product.filter_purchase') }}" class="form-control input-group-append" id="product_filter" placeholder="Enter product name">

                </div>
            </div>
        </div>
        <div class="row">
            {{--  product entry section  --}}
            <div class="col-md-6 overflow-auto">
                <table id="users" class="table table-bordered table-striped table-hover">
                    <thead>

                        <th>
                            Image
                        </th>
                        <th>
                            Name
                        </th>
                        <th>
                            Size
                        </th>
                        <th>
                            Unit
                        </th>

                        <th>
                            Quantity
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
                            <td colspan="4">Total</td>
                            <td class="total_quantaty">0</td>
                            <td class="total_price">0</td>
                            {{-- <td class="total_payment">0</td> --}}
                            <td class="total_subtotal">0</td>
                            <td></td>
                        </tr>
                    </tfoot>
                </table>
                <div>
                    <label for="invoice_print_status"><input id="invoice_print_status" type="checkbox">&nbsp; Do you want print invoice ?</label>
                </div>
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
        function formatVariantName(name) {
            return name.replace(/:/gi, ' - ').replace(/\b\w/g, c => c.toUpperCase()).trim();
        }
        function formatkey_unique(name) {
            return name.replace(/:/gi, '_').replace(/\b\w/g, c => c.toUpperCase()).trim();
        }

      function format_query_result(data_items){

        var product_filter ='';
        Object.keys(data_items).forEach(function(data){
            var items_variant_data = data_items[data].variant_option_info;
            var html_data_key = '';
            

            if(data_items[data].variant_on == 1){

                
                if(items_variant_data.length > 0){
                     html_data_key+=`<select class="form-control variant_key" >`
                     Object.keys(items_variant_data).forEach(function(key){

                     
                        // console.log(element);
                        html_data_key+=`<option value="${items_variant_data[key].name}">${formatVariantName(items_variant_data[key].name)}</option>`
                    });
                      html_data_key+=`</select>`
                }




            }else{
                  html_data_key+=``
            }


            var unitsItem = ''
            data_items[data].units_info.forEach(function(item){
                console.log(item);
                 unitsItem += `
                  <option value="${item.id}">
                        ${item.name}
                  </option>
                 `
            })

            product_filter +=`<tr class="single_item_result ">
                <td class="img p-1 img_c">
                    <img src="${data_items[data].image_url}" style="max-width:150px; height:40px" alt="">
                    <input class="data_id" value="${data_items[data].id}"  hidden />
                </td>
                <td class="name p-1 product_c">
                    ${data_items[data].name}
                </td>
                <td class="p-1">
                    <div class="d-flex variant_c" style="gap:5px;">
                        ${ html_data_key }
                    </div>
                </td>

                <td class="name p-1">
                    <select class="form-control unit_c" >
                        <option value="${data_items[data].unit_info ? data_items[data].unit_info.id : 0}">
                            ${data_items[data].unit_info ? data_items[data].unit_info.name : ''}
                        </option>
                        ${unitsItem}
                    </select>
                </td>
                <td class="action p-1">
                    <button type="button" type="button" class="btn btn-primary" onclick="items_add_from_quey(this)">+</button>
                </td>
            </tr>`;
        })

        return product_filter;
      }


        //   input change and filter
        var search_var = document.querySelector('#product_filter');
        search_var.addEventListener('input', function(e){
            e.preventDefault();
            filter_product_for_purchase(this)

        })



        // filter function
        function filter_product_for_purchase(thi){
            if ($('#scan_match_andInput').is(':checked')) {
                $.ajax({
                    type:'get',
                    url:'{{route('admin.product.single_filter')}}',
                    data:{
                        q:thi.value,
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
                    url:thi.getAttribute('data-url'),
                    data:{
                        q:thi.value,
                    },
                    success:function(data){
                        data = JSON.parse(data);

                    var data_format = format_query_result(data);
                        $('.container_searching_result').html(data_format);
                    }

                })
            }
        }


        // default call purchase filter result
        filter_product_for_purchase(search_var)




        // add items from quey
        function items_add_from_quey(thi){

            var id = $(thi).parents('tr').find('.img_c .data_id').val();

            var img_c = $(thi).parents('tr').find('.img_c').html();
            var name = $(thi).parents('tr').find('.product_c').html();


            var variant_key = $(thi).parents('tr').find('.variant_c .variant_key');
            if(variant_key.length > 0){
                variant_key = variant_key.val();
            }else{
                variant_key = '';
            }

            var variant_key_html = $(thi).parents('tr').find('.variant_c .variant_key option:selected');
            if(variant_key_html.length > 0){
                variant_key_html = variant_key_html.html()
            }else{
                variant_key_html = ''

            }
            
          
            

            var unit_c = $(thi).parents('tr').find('.unit_c').val();
            var unit_c_html = $(thi).parents('tr').find('.unit_c option:selected').html();

            var key_unique = id+'_'+formatkey_unique(variant_key)+'_'+unit_c;

            var data_format = ` <tr class="curent_parents_data items${key_unique}">
                            <td>
                               ${img_c}
                            </td>
                             <td>
                                ${name}
                                <input type="hidden" value="${id}" name="productId[]"/>
                            </td>
                           <td >
                           
                                ${variant_key_html}
                                <input hidden value="${variant_key}" name="variant_name[]"/>
                            </td>
                           <td>
                                ${unit_c_html}
                                <input value="${unit_c}" name="unit[]" hidden/>
                            </td>

                            <td>
                                <input oninput="calclute_inline('.items${key_unique}')" type="number" class="quantaty" name="quantity[]" value="1">
                            </td>
                            <td>
                                <input oninput="calclute_inline('.items${key_unique}')" type="number" class="price" name="price[]" value="0">
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

                        var finding = document.querySelectorAll('#data_insert_list .items'+key_unique);
                        if(finding.length > 0){
                            var prev_val = finding[0].querySelector('.quantaty');
                            var current_value = parseInt(prev_val.value)+1;
                            prev_val.value = current_value;
                        }else{
                            $('#data_insert_list').append(data_format);
                        }

                        calclute_inline('.items'+key_unique)

        }



        // calculate inline total
        function calclute_inline(class_name){
            var items = document.querySelector(class_name+' .quantaty').value;
            var price = document.querySelector(class_name+' .price').value;
            // var payment = document.querySelector(class_name+' .payment').value;

            var total = document.querySelector(class_name+' .total');
            total.value = items * price

            // total.value = (items * price) - payment

            calculateSubtotal()
        }


        // calculate Subtotal
        function calculateSubtotal() {
            var items = document.querySelectorAll('#data_insert_list tr');
            var totalItems = 0;
            var totalPrice = 0;
            // var totalPayment = 0;
            var totalSubtotal = 0;

            items.forEach(function(element) {
                // Safely parse integer values and default to 0 if not valid
                var quantity = parseInt(element.querySelector('.quantaty').value) || 0;
                var price = parseInt(element.querySelector('.price').value) || 0;
                // var payment = parseInt(element.querySelector('.payment').value) || 0;
                var subtotal = parseInt(element.querySelector('.total').value) || 0;

                totalItems += quantity;
                totalPrice += price;
                // totalPayment += payment;
                totalSubtotal += subtotal;
            });

            // Update the DOM elements with the calculated totals
            document.querySelector('.total_subtotal').innerHTML = totalSubtotal;
            document.querySelector('.total_price').innerHTML = totalPrice;
            // document.querySelector('.total_payment').innerHTML = totalPayment;
            document.querySelector('.total_quantaty').innerHTML = totalItems;
        }




        // latest solution
        // Submit form
        $('.purchause_create').on('submit', function(e){
            e.preventDefault();
            $.ajax({
                type: this.method,
                url: this.action,
                processData: false,
                contentType: false,
                data: new FormData(this),
                success:function(data){
                    data = JSON.parse(data);
                    if(data.type =='success'){
                        flasher.success(data.title)

                        if($('#invoice_print_status').prop('checked') == true) {
                            window.open("{{ route('admin.purchase.report_single') }}?purchase_id=" + data.purchase_id, "_blank", "popup=yes");
                        }

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
