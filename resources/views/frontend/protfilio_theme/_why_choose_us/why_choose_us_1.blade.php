<x-frontend_section :info="$variant_info" title='none' class="why_choose_us_1" css="_why_choose_us/_why_choose_us1.css">
    <div class="container-flud why-us section-bg aos-init aos-animate" data-aos="fade-up">
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
                        <li>
                            <i class="fas fa-check"></i>
                            <div>
                                <h5>১০ দিনের ওয়ারেন্টি সহ ২৪/৭ সাপোর্ট</h5>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-check"></i>
                            <div>
                                <h5>বেস্ট প্রাইজ এ প্রফেশনাল সার্ভিস</h5>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-check"></i>
                            <div>
                                <h5>সঠিক সময় গ্রাহক সেবা</h5>
                            </div>
                        </li>
                        <li>
                            <i class="fas fa-check"></i>
                            <div>
                                <h5>দক্ষ ও ভেরিফাইড টেকনিশিয়ান দ্বারা সার্ভিস প্রদান করা</h5>
                            </div>
                        </li>
                    </ul>
                    <div class="row wwu">
                        <div class="col-6 col-md-6 count-box">
                            <div class="count-head">
                                <span data-purecounter-start="0" data-purecounter-end="6" data-purecounter-duration="0"
                                    class="purecounter">6</span> Years+
                            </div>
                            <p>কাজ করার সময়কাল</p>
                        </div>
                        <div class="col-6 col-md-6 count-box">
                            <div class="count-head">
                                <span data-purecounter-start="0" data-purecounter-end="101"
                                    data-purecounter-duration="0" class="purecounter">101</span>+
                            </div>
                            <p>সার্ভিস সমূহ</p>
                        </div>
                        <div class="col-6 col-md-6 count-box">
                            <div class="count-head">
                                <span data-purecounter-start="0" data-purecounter-end="5061"
                                    data-purecounter-duration="0" class="purecounter">5061</span>+
                            </div>
                            <p>আমাদের সাফল্য</p>
                        </div>
                        <div class="col-6 col-md-6 count-box">
                            <div class="count-head">
                                <span data-purecounter-start="0" data-purecounter-end="88.669950738916"
                                    data-purecounter-duration="0" class="purecounter">89</span>%
                            </div>
                            <p>সফলতার হার</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</x-frontend_section>
