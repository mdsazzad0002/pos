<table class="table talbe-bordered border table-striped table-hover">
    <tr>
        <td>Name</td>
        <td>{{ $product->name }}   </br>
            <button class='btn btn-primary btn-sm' 
            data-target="#ajax_modal_dialog_add"
            data-dialog='modal-dialog-scrollable modal-xl'  
            onclick='button_ajax(this)' 
            data-title='Purchase History of `{{  $product->name }}`'
            data-href='{{ route('admin.product.purchase_history_by_product', $product->id) }}'>View Purchse Histoy</button>
        </td>
    </tr>
    <tr>
        <td>Links</td>
        @php
            $details_page = \App\Models\Page::where('status', 1)->where('page_type', 'view')->first();
        @endphp
        <td>
            <div>
                General Links: <br/>
                {{ url($details_page->slug.'?slug='.$product->slug ?? '')  }} 
                <button type="button" class="btn btn-warning btn-sm" onclick="window.copyToClipboard('{{ url($details_page->slug.'?slug='.$product->slug ?? '') }}')">Copy</button> 
            </div>
            <div>
                Seo Links: <br/>
                {{ url('/product-details/'.$product->slug ?? '') }} <button type="button" class="btn btn-warning btn-sm" onclick="window.copyToClipboard('{{ url('/product-details/'.$product->slug ?? '') }}')">Copy</button>
            </div>

          
            
              
          
        </td>
    </tr>
    <tr>
        <td>SkU</td>
        <td>{{ $product->sku }}</td>
    </tr>
    <tr>
        <td>Unit</td>
        <td>{{ $product->unit_info->name ?? '' }}</td>
    </tr>
    <tr>
        <td>Brand</td>
        <td>{{ $product->brand_info->name ?? '' }}</td>
    </tr>

    <tr>
        <td>Category</td>
        <td>{{ $product->category_info->name ?? '' }}</td>
    </tr>
    <tr>
        <td>Sub Category</td>
        <td>{{ $product->sub_category_info->name ?? '' }}</td>
    </tr>
    <tr>
        <td>Vat</td>
        <td>{{ $product->vat_info->name ?? '' }}</td>
    </tr>
    <tr>
        <td>Slug</td>
        <td>{{ $product->slug }}</td>
    </tr>
    <tr>
        <td>Old Price</td>
        <td>{{ $product->old_price }}</td>
    </tr>
    <tr>
        <td>Selling Price</td>
        <td>{{ $product->selling_price }}</td>
    </tr>
    <tr>
        <td>Discount</td>
       <td>
        @forelse ($product->discounts_info() as $discount)
            Name : {{ $discount->name }}<br>
            Amount : {{ $discount->amount }}<br>
            Type : {{ $discount->type? 'Percent' :'Fixed' }}<br>
        @empty
            No discounts available.
        @endforelse
    </td>
    </tr>
    <tr>
        <td>Short Description</td>
        <td>{{ $product->short_description }}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>{!! $product->description !!}</td>
    </tr>

    <tr>
        <td>Image</td>
        <td><img src="{{ dynamic_asset($product->upload_id) }}" style="width: 100px" alt=""></td>
    </tr>
    <tr>
        <td>Creator</td>
        <td>{{ $product->user->name ?? ''  }}</td>
    </tr>
</table>
