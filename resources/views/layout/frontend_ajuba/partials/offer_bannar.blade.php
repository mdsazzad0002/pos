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
                <a href="{{ $homepage_offer_banner_popup->link }}">
                    <img src="{{ dynamic_asset($homepage_offer_banner_popup->image3) }}" alt="Offer Banner">
                </a>
            </div>
        </div>
    </div>
</div>
@push('js')
    
    @php
        $isHomePage = request()->is('/'); // Check if on the home page
        if ($isHomePage) {
            session()->forget('laravel_popup_consent'); // Reset banner on home page
        }

        if (!session()->has('laravel_popup_consent')) {
            session()->put('laravel_popup_consent', true);
    @endphp

            <script>
                setTimeout(() => {
                    $('#exampleModal').modal('show');
                }, 1000);
            </script>

    @php
        }
    @endphp
@endpush


@endif
