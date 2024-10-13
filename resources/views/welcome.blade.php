{{-- Master Include  --}}
@extends('layout.frontend.master')

{{-- Define Site Title  --}}
@section('title', settings('dashboard_title', 10))

{{-- Content Extends  --}}
@section('content')




<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P596LV7H"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->






<script async src="https://www.googletagmanager.com/gtag/js?id=G-7EQPB43DB5"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-7EQPB43DB5'); // Replace with your GA4 ID
</script>

<script>
    gtag("event", "view_item_list", {
    item_list_id: "4;//[;-]",
    item_list_name: "Related products",
    items: [
      {
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
        item_list_id: "related_products",
        item_list_name: "Related Products",
        item_variant: "green",
        location_id: "ChIJIQBpAG2ahYAR_6128GcTUEo",
        price: 10.01,
        quantity: 3
      }
    ]
  });
</script>

@endsection
