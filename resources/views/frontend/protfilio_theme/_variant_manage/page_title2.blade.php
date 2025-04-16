@if (isset($variant_info))
    <x-frontend_section :info="$variant_info" title='none' class="hero_hero_slider{{ $variant_info->id }}" css="">
        <section id="about{{ $variant_info->id }}" class="about r-section-p">
            <div class="container-flude aos-init aos-animate" data-aos="fade-up">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="about-page-about-us d-flex justify-content-center align-items-center h-100 p-5">
                            <div id="text_typed{{ $variant_info->id }}" style="display: none;">
                                <p style="color:white">{{ $variant_info->title ?? '' }}</p>
                            </div>
                            <h1 style="color:white !important">
                                <span id="text_typed_position{{ $variant_info->id }}" style="color:white"></span><span
                                    class="typed-cursor"></span>
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="{{ asset('vendor/typeing/typed.js') }}"></script>
        <script>
            window.addEventListener('load', () => {
                const typed = new Typed('#text_typed_position{{ $variant_info->id }}', {
                    stringsElement: '#text_typed{{ $variant_info->id }}',
                    typeSpeed: 40,
                    backDelay: 1000,
                    loop: true,
                    // cursorChar: '_',
                });
            });
        </script>

        </x-frontend-section>
@endif
