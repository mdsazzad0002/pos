@php
    $homepage_offer_banner_popup = App\Models\OfferBanner::where('status', 1)->where('type', 4)->first();
@endphp

@if ($homepage_offer_banner_popup)
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content bg-white" style="    border-radius: 15px; overflow: hidden;">

            <div class="modal-body p-0">
                <button type="button" class="btn-close cookie_popup_close position-absolute  top-0 end-0 bg-secondary rounded-circle text-white p-2" data-bs-dismiss="modal"  aria-label="Close"></button>
                <img src="{{ dynamic_asset($homepage_offer_banner_popup->image3) }}" alt="Offer Banner">
            </div>
        </div>
    </div>
</div>


<script>




    const executeCodesPopup = () => {
        //if cookie contains codinglab it will be returned and below of this code will not run
        if (document.cookie.includes("laravel_popup_consent")) return;
            $('#exampleModal').modal('show');
            document.querySelector(".cookie_popup_close").addEventListener("click", () => {
                //set cookies for 1 month. 60 = 1 min, 60 = 1 hours, 24 = 1 day, 30 = 30 days
                document.cookie = "laravel_popup_consent = {{ url('/') }}; max-age=" + 60 * 60 * 24 * 30;
            });


    };

    //executeCodes function will be called on webpage load
    window.addEventListener("load", executeCodesPopup);

</script>
@endif
