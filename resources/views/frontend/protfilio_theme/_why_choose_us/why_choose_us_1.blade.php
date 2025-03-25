@php
    $why_choose_us = \App\Models\WhyChooseUs::where('status', 1)->get();
    $acheivement = \App\Models\Achivement::where('status', 1)->get();
@endphp
<x-frontend_section :info="$variant_info" title='none' class="why_choose_us_1" css="_why_choose_us/_why_choose_us1.css">
    <div class="container-fluid why-us section-bg aos-init aos-animate" data-aos="fade-up">
        <div class="row">
            <div class="col-lg-6 d-flex flex-row-reverse align-items-center why-us-left aos-init aos-animate"
                data-aos="fade-right" data-aos-delay="100">
                <img src="{{ dynamic_asset($variant_info->upload_id3) }}" class="img-fluid" alt=""
                    style="width: 100%">
            </div>
            <div class="col-lg-6 content d-flex flex-column justify-content-center aos-init aos-animate"
                data-aos="fade-up" data-aos-delay="100">
                <div class="why-us-right">
                    <p class="why-us-title"><i class="fa fa-long-arrow-left"></i> {{ $variant_info->title }} <i
                            class="fa fa-long-arrow-right"></i></p>
                    <h3>{!! $variant_info->sub_title !!}</h3>
                    <ul>
                        @foreach ($why_choose_us as $why_choose )
                            <li>
                                <i class="{{ $why_choose->icon }}"></i>
                                <div>
                                    <h5>{{ $why_choose->title }}</h5>
                                </div>
                            </li>
                            
                        @endforeach
                    </ul>
                    <div class="row wwu">
                        @foreach ($acheivement as $acheivement )
                            <div class="col-6 col-md-6 count-box">
                                <div class="count-head">
                                    <span data-purecounter-start="0" data-purecounter-end="6" data-purecounter-duration="0"
                                        class="purecounter">{{ $acheivement->counter }}</span> {{ $acheivement->title }}
                                </div>
                                <p>{{ $acheivement->sub_title }}</p>
                            </div>
                            
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>



</x-frontend_section>
