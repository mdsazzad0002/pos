<!-- Team Section -->
<section id="team" class="team section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
        <h2>Team</h2>
        <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
    </div><!-- End Section Title -->

    <div class="container">

        <div class="row gy-4">
            @foreach ($teams as $item)


            <div class="col-lg-3 col-md-6 " data-aos="fade-up" data-aos-delay="100">
                <div class="team-member">
                    <div class="member-img">
                        <img src="{{ dynamic_asset($item->upload_id) }}" class="img-fluid w-100" alt="{{ $item->name }}">
                        <div class="social">
                            <a href="{{ $item->twitter }}"><i class="bi bi-twitter-x"></i></a>
                            <a href="{{ $item->facebook }}"><i class="bi bi-facebook"></i></a>
                            <a href="{{ $item->instagram }}"><i class="bi bi-instagram"></i></a>
                            <a href="{{ $item->linkedin }}"><i class="bi bi-linkedin"></i></a>
                        </div>
                    </div>
                    <div class="member-info">
                        <h4>{{ $item->name }}</h4>
                        <span>{{ $item->designation }}</span>
                    </div>
                </div>
            </div><!-- End Team Member -->
            @endforeach

    </div>

    </div>

</section><!-- /Team Section -->
