@php
    $homepage_offer_banner_popup = App\Models\OfferBanner::where('status', 1)->where('type', 4)->first();
@endphp

@if ($homepage_offer_banner_popup)
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content bg-white">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <img src="{{ dynamic_asset($homepage_offer_banner_popup->image3) }}" alt="Offer Banner">
            </div>
        </div>
    </div>
</div>

<script>
    setTimeout(() => {
        $('#exampleModal').modal('show');
    }, 700);
</script>
@endif
