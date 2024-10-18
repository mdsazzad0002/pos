<script async src="https://www.googletagmanager.com/gtag/js?id=G-7EQPB43DB5"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'G-7EQPB43DB5'); // Replace with your GA4 ID

</script>

@isset($key_ecom)
    @if($key_ecom == 'cart')

    @elseif($key_ecom == 'view_item_list')
    <script>
        gtag("event", "view_item_list", {
            item_list_id: "related_products", // Assign a meaningful ID
            item_list_name: "Related products",
            items: [{
                item_id: "SKU_12345",
                item_name: "Stan and Friends Tee",
                affiliation: "Google Merchandise Store",
                coupon: "SUMMER_FUN",
                discount: 2.22,
                index: 0,
                item_brand: "Google",
                item_category: "Apparel",
                item_category2: "Adult",
                item_category3: "Shirts",
                item_category4: "Crew",
                item_category5: "Short sleeve",
                item_variant: "green",
                location_id: "ChIJIQBpAG2ahYAR_6128GcTUEo",
                price: 10.01,
                quantity: 3
            }]
        });
    </script>
    @endif

@endisset


