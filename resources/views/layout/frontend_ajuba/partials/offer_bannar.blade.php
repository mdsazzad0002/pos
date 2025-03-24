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

    @php  
        if(session()->get('laravel_popup_consent')){
            
        }else{
            session()->put('laravel_popup_consent', true);
            @endphp
                <script>
                    setTimeout(() => {
                        $('#exampleModal').modal('show');
                    },800)
                    
                </script>
            @php
        }
    @endphp
@endif
