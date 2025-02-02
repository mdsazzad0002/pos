
@if($product && $product->variant_on == 1 )
<div class="variant_style_2">

    {{-- Heading show --}}
    <div class="heading">
        @php
            $data_items_variant_json = json_decode($product->variant_option);

        @endphp

        @if((is_array($data_items_variant_json->variant_details_key) || is_object($data_items_variant_json->variant_details_key)))
            @foreach ($data_items_variant_json->variant_details_key as $key => $item)
                <div class="single_heading">{{ $item ?? '' }}</div>
            @endforeach

            @foreach ($data_items_variant_json->variant_key as $key => $item)
                <div class="single_heading">{{ $item ?? '' }}</div>
            @endforeach
        @endif
    </div>
    {{-- End heading --}}






    @foreach ($product->variant_option_info as $key => $items_variant)
    <div class="mb-2 single_row_items_variant" data-price="{{ $items_variant->selling_price }}" data-old_price="{{ $items_variant->old_price }}" onclick="price_change(this)">

          <input type="radio" id="size{{ $items_variant->id }}" value="{{ $items_variant->id }}"  name="size" class="option-input variant_size">


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


        </div>
    @endforeach



</div>
@endif


<style>
    .variant_style_2 .heading {
        display:flex;
        gap: 10px;
        justify-content: space-around;

    }

    .variant_style_2 .single_heading {
        background:#020518;
        font-weight:700;
        padding:10px 15px;
        color:white;
        border-radius:4px;
        margin-bottom:5px;
        width:100px;
        padding:15px 10px;
        text-align:center;
        flex: 0 1 100px;

    }


    .variant_style_2 .single_row_items_variant{
        display:flex;
        gap: 10px;
        justify-content: space-around;
    }

    .variant_style_2 .single_row_items_variant .items label{
        background: var(--primary-color) 50%;
        border-radius:4px;
        padding:15px 10px;
        color:white;
        width:100%;
        text-align:center;
        cursor: pointer;
    }

    .variant_style_2 .single_row_items_variant:has(input:checked)   label{
        background:#6b6b6b;
    }

    .variant_style_2 .single_row_items_variant  input{
        display:none;
    }
    .single_row_items_variant .items {
        width: auto;
        padding: 0;
        flex: 0 1 100px;

    }
    .variant_style_2 .single_row_items_variant    label{
        width: 100%;
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

