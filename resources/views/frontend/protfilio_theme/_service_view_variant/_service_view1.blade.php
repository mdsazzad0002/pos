@section('content')

@php
    $service = \App\Models\Service::where('slug', $request->slug)->first();
  
@endphp



@if(isset($service) && $service)

<section id="service-details" class="service-details section">

  <div class="container-fluid">

    <div class="row gy-4">

      <div class="col-lg-4 " data-aos="fade-up" data-aos-delay="100">
        <div class="services-list service_list_container">


            <h4>{{ Str::title($service->title)  }}</h4>
            <div class="quick_access_tag"></div>

            <p>{{ $service->short_description  }}</p>
        </div>
      </div>

      <div class="col-lg-8 service_container Device_rootservice_container" data-aos="fade-up" data-aos-delay="200">
        <img src="{{ dynamic_asset($service->bg_upload_id) }}" alt="" class="img-fluid services-img w-100">

        {!! $service->description ?? '' !!}

      </div>
    </div>
  </div>

</section><!-- /Service Details Section -->
@else
    @include('frontend.protfilio_theme._404_variant.404_style1', ['details' => 'This page is temporarily unavailable or has been moved.', 'title' => 'Something is wrong'])
@endif



@endsection

@push('js')
<script>
function tag_scroll_and_target(){
    $('a[href*="#"]')
    // Remove links that don't actually link to anything
    .not('[href="#"]')
    .not('[href="#0"]')
    .click(function(event) {
        // On-page links

        if (
        location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
        &&
        location.hostname == this.hostname
        ) {



        document.querySelectorAll('.quick_access_tag a').forEach(element=>{
            element.classList.remove('active');
            document.querySelector(element.getAttribute('href')).classList.remove('active_target');
        })

        this.classList.add('active');
        document.querySelector(this.getAttribute('href')).classList.add('active_target');

        // Figure out element to scroll to
        var target = $(this.hash);
        history.pushState(null, null, this.href);
        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
        // Does a scroll target exist?
        if (target.length) {
            // Only prevent default if animation is actually gonna happen
            event.preventDefault();
            $('html, body').animate({
            scrollTop: target.offset().top -120
            }, 1000, function() {
            // Callback after animation
            // Must change focus!
            var $target = $(target);
            $target.focus();
            if ($target.is(":focus")) { // Checking if the target was focused
                return false;
            } else {
                $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
                $target.focus(); // Set focus again
            };
            });
        }
        }
    })
}
function slugify(str) {
    str = str.replace(/^\s+|\s+$/g, ''); // trim leading/trailing white space
    str = str.toLowerCase(); // convert string to lowercase
    str = str.replace(/[^a-z0-9 -]/g, '') // remove any non-alphanumeric characters
             .replace(/\s+/g, '-') // replace spaces with hyphens
             .replace(/-+/g, '-'); // remove consecutive hyphens
    return str;
  }

function index_tag_generate(){
    var quick_access_tag = document.querySelector('.quick_access_tag');


    var tag_rander = '';

    var details_root_element = document.querySelector('.Device_rootservice_container');
    var h1_items = details_root_element.querySelectorAll('h1, h2, h3, h4, h5, h6');

      h1_items.forEach(function(element) {
          const title = element.innerHTML;
          const slug = slugify(title);
          element.setAttribute('id', slug);



          tag_rander+=`<a href="#${slug}" >${element.innerHTML}</a>`;



      });
      quick_access_tag.innerHTML = tag_rander;
      console.log()


      tag_scroll_and_target();
  };
  index_tag_generate()
</script>
@endpush

@push('css')
    <style>
        .service_list_container{
            POSITION: STICKY;
            TOP: 100PX;

        }
        #service-details{
            padding: 30px 0;
        }
        .quick_access_tag a{
            display:block;
            padding:5px 0;
        }
        .quick_access_tag a.active,
        .quick_access_tag a:hover{
            padding:5px 10px;
            background:#f2eeee !important;
            border-radius:5px;
        }
        .quick_access_tag{
            margin:15px 0;
        }

        .active_target {

            margin-top: 5px;
            border: 2px solid;
            border-width: 5px 0 0 5px;
            border-radius: 5px 0 0 5px;
            border-color: #199c75;
            padding: 2px 7px;
        }
    </style>
@endpush

