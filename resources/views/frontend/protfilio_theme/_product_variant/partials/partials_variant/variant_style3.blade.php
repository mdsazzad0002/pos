
@if($product && $product->variant_on == 1 )
<div class="variant_style_3">

    {{-- Heading show --}}
    <div class="heading">
        @php
            $data_items_variant_json = json_decode($product->variant_option);
            // dd($data_items_variant_json);
        @endphp



            @if( $data_items_variant_json && (is_array($data_items_variant_json->variant_key) || is_object($data_items_variant_json->variant_key)))
                @foreach ($data_items_variant_json->variant_key as $key => $item)
                    <div class="single_heading">{{ $item ?? '' }}</div>
                @endforeach
            @endif

            @if($data_items_variant_json->variant_details_key && (is_array($data_items_variant_json->variant_details_key) || is_object($data_items_variant_json->variant_details_key)))
                @foreach ($data_items_variant_json->variant_details_key as $key => $item)
                <div class="single_heading">{{ $item ?? '' }}</div>
                @endforeach
            @endif
    </div>
    {{-- End heading --}}





    <div class="container_variant_result">
        @foreach ($product->variant_option_info as $key => $items_variant)


    <div class="mb-2 single_row_items_variant" data-price="{{ $items_variant->selling_price }}" data-old_price="{{ $items_variant->old_price }}" onclick="price_change(this)">

          <input type="radio" id="size{{ $items_variant->id }}" value="{{ $items_variant->id }}"  name="size" class="option-input variant_size">


            {{-- Variant Info print --}}
                 @php
                        $key_items_key_name = explode(":", $items_variant->name);
                @endphp

                @foreach ($key_items_key_name as $i => $key_name_item)

                    <div class="items">
                        <input type="radio" id="sizevar{{ $items_variant->id.$key_name_item }}" value="{{ $items_variant->id }}"  name="size" class="option-input variant_size">
                        <label for="size{{ $items_variant->id }}">
                            <span class="option-text text-capitalize">{{ $key_name_item ?? '' }}</span>
                        </label>
                    </div>

                @endforeach
                {{-- End Variant Info print --}}



                {{-- Additional info print --}}
                @if(is_array($data_items_variant_json->variant_details_key) || is_object($data_items_variant_json->variant_details_key))
                    @for($i = 0; $i < count($data_items_variant_json->variant_details_key); $i++)
                        <div class="items">

                            <label for="size{{ $items_variant->id }}">
                                <span class="option-text text-capitalize">{{ $items_variant->{"details_key_value_".$i} ?? '' }}</span>
                            </label>
                        </div>
                    @endfor
                @endif

                {{-- End Additional info print --}}





        </div>
    @endforeach

</div>



</div>
@endif


<style>
    .variant_style_3 .heading {
        display:flex;
        gap: 10px;
        justify-content: space-around;
        flex-direction: column;
        font-size: 14px;
        font-weight: 600

    }

    .container_variant_result {
    display: flex;
    gap: 5px;
}


.container_variant_result input{
    display:none;
}

.container_variant_result .single_row_items_variant{
    border:1px solid gray;
    min-width:70px;
    text-align:center;
    transition:.5s;
}


 .container_variant_result label{
       display:block;
       padding:4px;
       cursor:pointer;
       user-select:none;
 }

 .container_variant_result input:checked  ~ .items label{
    background:#000000;
    display:block;
    color:white;


}


</style>

<script>
    setTimeout(() => {
        var items_first =  document.querySelectorAll('.single_row_items_variant')[0];
             if(items_first){
                 items_first.querySelector('input').checked = true;
                 items_first.click();
                 // console.log(items_first);
                 price_change(items_first);
             }

    },2500);

</script>

