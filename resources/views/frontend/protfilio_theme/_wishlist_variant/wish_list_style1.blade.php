@php
    if(!isset($view_page)){
        $view_page = \App\Models\Page::where('page_type', 'view')->first();
    }

@endphp


<x-page_title title="My WishList"/>


<main class="main-wrapper bg-lightest-gray">

    <!-- Wishlist Area Start -->
    <section class="cart py-40">
        <div class="container-fluid">
            <div class="d-lg-block d-none">
                <table class="cart-table wishlist mb-16">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Unit Price</th>
                        </tr>
                    </thead>
                </table>
                <table class="cart-table">
                    <tbody id="wishlist_list">



                    </tbody>
                </table>

                <table class="cart-table bg-white rounded">
                    <tr>
                        <td>
                            <div class="text-center">
                                <a href="{{ url('/') }}" class="cus-btn-3">Continue Shopping</a>
                            </div>
                        </td>
                    </tr>
                </table>

            </div>



        </div>
    </section>
    <!-- Wishlist Area End -->


</main>


@push('js')
<script>
    function format_wishlist(data){
        var html = '';
        if(data.length > 0){
            data.forEach(product => {
                html += `
                <tr class="bg-white">
                    <td class="pd">
                        <div class="product-detail-box">
                        <a href="javascript:void(0)" onclick="add_to_compareList(${product.id}, 'remove_list')" class="h5 dark-black">
                            <i class="fal fa-times"></i>
                        </a>
                        <div class="img-block">
                            <a href="{{ url($view_page->slug) }}?slug=${product.slug}">
                            <img src="${(product.image_url)}" alt="${product.name}">
                            </a>
                        </div>
                        <div class="d-block text-start">
                            <h6><a href="{{ url($view_page->slug) }}?slug=${product.slug}?slug=${product.slug}">${product.name}</a></h6>
                        </div>
                        </div>
                    </td>
                    <td>
                        <p class="fw-500">{{ settings('currency_symbol', 9) }} ${
                    product.variant_on ? "In Variant" : product.selling_price
                    }</p>
                    </td>
                    <td>
                        <a href="{{ url($view_page->slug) }}?slug=${product.slug}?slug=${product.slug}" class="cus-btn-3">View Details</a>
                    </td>
                    </tr>
                    `;
            });
        }
        $('#wishlist_list').html(html);
    }
    function wishlist_data(){
        $.ajax({
            url: "{{ route('compare_list') }}",
            method: 'get',
            success: function(data) {
                format_wishlist(data);
            }
        });

    }

    wishlist_data()
</script>
@endpush

