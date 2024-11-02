
<h5 class="color-sec">
    @if($rating_star == 5)
         ★★★★★
    @elseif ($rating_star >= 4)
          ★★★★<span class="light-gray">★</span>
    @elseif ($rating_star >= 3)
         ★★★<span class="light-gray">★★</span>
    @elseif ($rating_star >= 2)
         ★★<span class="light-gray">★★★</span>
    @elseif ($rating_star >= 1)
         ★<span class="light-gray">★★★★</span>
    @else
        <span class="light-gray">★★★★★</span>
    @endif
    &nbsp;&nbsp;<span class="text-16 fw-400 dark-black">({{ $rating ?? 0 }}) Reviews</span></h5>

