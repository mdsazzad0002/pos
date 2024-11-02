@extends('layouts.frontend.master')
@section('title', 'Accessory Store')
@section('content')
     <!-- Title Banner Start -->
     <section class="title-banner">
        <div class="container-fluid">
            <div class="banner-wrapper">
                <img src="assets/media/banner/left-image.png" alt="" class="banner-image1">
                <h1 class="dark-black fw-600">About Us</h1>
                <img src="assets/media/banner/right-image.png" alt="" class="banner-image2">
            </div>
        </div>
    </section>
    <!-- Title Banner End -->

    <!-- About Section Start -->
    <section class="about-section py-40">
        <div class="container-fluid">
            <div class="about-wrapper bg-white">
                <div class="about-block mb-24">
                    <div class="row align-items-center row-gap-4">
                        <div class="col-xl-6 col-lg-7 order-sm-1 order-2">
                            <div class="about-content">
                                <h3 class="mb-24">Discover Our Story</h3>
                                <p class="light-gray mb-12">
                                    Welcome to <span class="dark-black fw-500"> Gadgetize - Electronics Accessories Store, </span> your number one source for all things electronics accessories.
                                    We're dedicated to providing you the very best of chargers, headphones, cables, and more, with an emphasis on
                                    quality, affordability, and customer satisfaction.
                                </p>
                                <p class="light-gray">
                                    Founded in 2010 by Founder's <span class="dark-black fw-500"> John Smith,</span> Gadgetize has come a long way from its beginnings in New York, USA. When John
                                    Smith first started out, their passion for technology and electronics drove them to start their own business. Their goal
                                    was simple: to offer high-quality products that were not only reliable but also affordable.
                                </p>

                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-5 order-sm-2 order-1">
                            <div class="about-image">
                                <img src="assets/media/about/about-1.png" alt="" class="br-20">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-block mb-24">
                    <div class="row align-items-center row-gap-4">
                        <div class="col-xl-6 col-lg-5 ">
                            <div class="about-image">
                                <img src="assets/media/about/about-2.png" alt="" class="br-20">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-7">
                            <div class="about-content">
                                <h3 class="mb-24">Our Mission and Values</h3>
                                <p class="light-gray mb-24">
                                   At <span class="dark-black fw-500"> Gadgetize - Electronics Accessories Store, </span> your number one source for all things electronics accessories.
                                    We're dedicated to providing you the very best of chargers, headphones, cables, and more, with an emphasis on
                                    quality, affordability, and customer satisfaction.
                                </p>
                                <ul>
                                    <li class="fw-500 mb-8">Quality Products</li>
                                    <li class="fw-500 mb-8">Affordability</li>
                                    <li class="fw-500 mb-8">Excellent Customer Service</li>
                                    <li class="fw-500 mb-8">Innovation</li>
                                    <li class="fw-500">Sustainability:</li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-block">
                    <div class="row align-items-center row-gap-4">
                        <div class="col-xl-6 col-lg-7 order-sm-1 order-2">
                            <div class="about-content">
                                <h3 class="mb-24">Our Mission and Values</h3>
                                <p class="light-gray mb-24">
                                    We offer a wide range of electronic accessories designed to meet your every need. Whether you're looking for the latest
                                    wireless headphones, fast charging cables, durable cases, or innovative gadgets, we have something for everyone.
                                </p>
                                <ul>
                                    <li class="fw-500 mb-8">Chargers</li>
                                    <li class="fw-500 mb-8">headphones & Earphones</li>
                                    <li class="fw-500 mb-8">Cables & Connectors</li>
                                    <li class="fw-500 mb-8">Cases & Covers</li>
                                    <li class="fw-500">Smart Home Gadgets</li>
                                </ul>

                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-5 order-sm-2 order-1">
                            <div class="about-image">
                                <img src="assets/media/about/about-3.png" alt="" class="br-20">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->

    <!-- Why Choose Us -->
    <section class="whyChoose-us py-40">
        <div class="container-fluid">
            <div class="title-row text-center mb-16">
                <h5>Why Choose Us</h5>
            </div>
            <div class="row row-gap-3">
                <div class="col-xl-3 col-lg-6 col-sm-6">
                    <div class="our-block bg-white br-10 text-center">
                        <div class="icon-block m-auto">
                            <img src="assets/media/icons/quality.png" alt="">
                        </div>
                        <h6 class="mt-24 mb-16 fw-600">Quality Assurance</h6>
                        <p class="light-gray">
                            Lorem ipsum dolor sit amet consectetur. Pellentesque hendrerit phasellus quam massa. Vulputate eget duis.
                        </p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-sm-6">
                    <div class="our-block bg-white br-10 text-center">
                        <div class="icon-block m-auto">
                            <img src="assets/media/icons/customer.png" alt="">
                        </div>
                        <h6 class="mt-24 mb-16 fw-600">Customer-Centric</h6>
                        <p class="light-gray">
                            Lorem ipsum dolor sit amet consectetur. Pellentesque hendrerit phasellus quam massa. Vulputate eget duis.
                        </p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-sm-6">
                    <div class="our-block bg-white br-10 text-center">
                        <div class="icon-block m-auto">
                            <img src="assets/media/icons/wishlist-icon.png" alt="">
                        </div>
                        <h6 class="mt-24 mb-16 fw-600">Secure Shopping:</h6>
                        <p class="light-gray">
                            Lorem ipsum dolor sit amet consectetur. Pellentesque hendrerit phasellus quam massa. Vulputate eget duis.
                        </p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-sm-6">
                    <div class="our-block bg-white br-10 text-center">
                        <div class="icon-block m-auto">
                            <img src="assets/media/icons/cheque.png" alt="">
                        </div>
                        <h6 class="mt-24 mb-16 fw-600">Affordable Prices</h6>
                        <p class="light-gray">
                            Lorem ipsum dolor sit amet consectetur. Pellentesque hendrerit phasellus quam massa. Vulputate eget duis.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Why Choose Us -->

    <!-- Team Section Start -->
    <section class="team-section py-40">
        <div class="container-fluid">
            <div class="title-row mb-16 text-center">
                <h5>Meet Our Team</h5>
            </div>
            <div class="row row-gap-3">
                <div class="col-xl-3 col-lg-6 col-sm-6">
                    <div class="team-block bg-white text-center">
                        <div class="image-box mb-24">
                            <img src="assets/media/team/person-1.png" alt="" class="br-10 w-100">
                        </div>
                        <div class="content-box">
                            <h6 class="mb-8">Emily Johnson</h6>
                            <p class="mb-16">Founder/CEO</p>
                            <p class="light-gray">
                                Lorem ipsum dolor sit amet consectetur malesuada scelerisque tortor. Nulla sit egestas proin mauris mattis viverra.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-sm-6">
                    <div class="team-block bg-white text-center">
                        <div class="image-box mb-24">
                            <img src="assets/media/team/person-2.png" alt="" class="br-10 w-100">
                        </div>
                        <div class="content-box">
                            <h6 class="mb-8">Marry Charlotte</h6>
                            <p class="mb-16">Customer Service Manager</p>
                            <p class="light-gray">
                                Lorem ipsum dolor sit amet consectetur malesuada scelerisque tortor. Nulla sit egestas proin mauris mattis viverra.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-sm-6">
                    <div class="team-block bg-white text-center">
                        <div class="image-box mb-24">
                            <img src="assets/media/team/person-3.png" alt="" class="br-10 w-100">
                        </div>
                        <div class="content-box">
                            <h6 class="mb-8">Sarah Davis</h6>
                            <p class="mb-16">Marketing Specialist</p>
                            <p class="light-gray">
                                Lorem ipsum dolor sit amet consectetur malesuada scelerisque tortor. Nulla sit egestas proin mauris mattis viverra.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-sm-6">
                    <div class="team-block bg-white text-center">
                        <div class="image-box mb-24">
                            <img src="assets/media/team/person-4.png" alt="" class="br-10 w-100">
                        </div>
                        <div class="content-box">
                            <h6 class="mb-8">Ava Jennifer</h6>
                            <p class="mb-16">Logistics Coordinator</p>
                            <p class="light-gray">
                                Lorem ipsum dolor sit amet consectetur malesuada scelerisque tortor. Nulla sit egestas proin mauris mattis viverra.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Team Section End -->

    <!-- FAQ's Section Start -->
    <div class="faq py-40">
        <div class="container-fluid">
            <div class="title-row mb-16 text-center">
                <h5>Frequently Asked Questions</h5>
            </div>
            <div class="row row-gap-3">
                <div class="col-xl-6 col-lg-12">
                    <div id="accordionExample">
                        <div class="faq-block">
                            <a href="#" class="accordion-button" data-bs-toggle="collapse" data-bs-target="#faq1" aria-expanded="true"
                                aria-controls="faq1">What is the return policy for your products?
                            </a>
                            <div id="faq1" class="accordion-collapse collapse show" aria-labelledby="faq1"
                                data-bs-parent="#accordionExample">
                                <p class="light-gray">We offer a 30-day return policy on all our products. If you are not satisfied with
                                    your purchase, you can return the
                                    item within 30 days of delivery for a full refund or exchange. Please ensure the product is in its
                                    original condition
                                    and packaging. For more details, visit our <span class="color-primary"> Return Policy </span> page.
                                </p>
                            </div>
                        </div>
                        <div class="faq-block">
                            <a href="#" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#faq2"
                                aria-expanded="true" aria-controls="faq2">How can I track my order?
                            </a>
                            <div id="faq2" class="accordion-collapse collapse " aria-labelledby="faq2"
                                data-bs-parent="#accordionExample">
                                <p class="light-gray">We offer a 30-day return policy on all our products. If you are not satisfied with
                                    your purchase, you can return the
                                    item within 30 days of delivery for a full refund or exchange. Please ensure the product is in its
                                    original condition
                                    and packaging. For more details, visit our <span class="color-primary"> Return Policy </span> page.
                                </p>
                            </div>
                        </div>
                        <div class="faq-block m-0">
                            <a href="#" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#faq3"
                                aria-expanded="true" aria-controls="faq3">How can I contact customer support?
                            </a>
                            <div id="faq3" class="accordion-collapse collapse " aria-labelledby="faq3"
                                data-bs-parent="#accordionExample">
                                <p class="light-gray">We offer a 30-day return policy on all our products. If you are not satisfied with
                                    your purchase, you can return the
                                    item within 30 days of delivery for a full refund or exchange. Please ensure the product is in its
                                    original condition
                                    and packaging. For more details, visit our <span class="color-primary"> Return Policy </span> page.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-12">
                    <div id="accordionExample_2">
                        <div class="faq-block">
                            <a href="#" class="accordion-button" data-bs-toggle="collapse" data-bs-target="#faq5" aria-expanded="true"
                                aria-controls="faq5">Do you offer international shipping?
                            </a>
                            <div id="faq5" class="accordion-collapse collapse show" aria-labelledby="faq5"
                                data-bs-parent="#accordionExample_2">
                                <p class="light-gray">Answer: Yes, we offer international shipping to most countries. Shipping fees and
                                    delivery times vary based on the
                                    destination. You can view the shipping options and costs during the checkout process. For more
                                    information, please check
                                    our <span class="color-primary">Shipping Information</span> page. </p>
                            </div>
                        </div>
                        <div class="faq-block">
                            <a href="#" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#faq6"
                                aria-expanded="true" aria-controls="faq6">What payment methods do you accept?
                            </a>
                            <div id="faq6" class="accordion-collapse collapse " aria-labelledby="faq6"
                                data-bs-parent="#accordionExample_2">
                                <p class="light-gray">We offer a 30-day return policy on all our products. If you are not satisfied with
                                    your purchase, you can return the
                                    item within 30 days of delivery for a full refund or exchange. Please ensure the product is in its
                                    original condition
                                    and packaging. For more details, visit our <span class="color-primary"> Return Policy </span> page.
                                </p>
                            </div>
                        </div>
                        <div class="faq-block m-0">
                            <a href="#" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#faq7"
                                aria-expanded="true" aria-controls="faq7">How do I apply a discount code to my order?
                            </a>
                            <div id="faq7" class="accordion-collapse collapse " aria-labelledby="faq7"
                                data-bs-parent="#accordionExample_2">
                                <p class="light-gray">We offer a 30-day return policy on all our products. If you are not satisfied with
                                    your purchase, you can return the
                                    item within 30 days of delivery for a full refund or exchange. Please ensure the product is in its
                                    original condition
                                    and packaging. For more details, visit our <span class="color-primary"> Return Policy </span> page.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
        </div>
    </div>
    <!-- FAQ's Section End -->

    <!-- Brand Slider Start -->
    <div class="brand-sec bg-white mt-40 mb-80">
        <div class="brand-slider">
            <div class="brand-block">
                <img src="assets/media/icons/logo-1.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-2.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-3.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-4.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-5.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-6.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-1.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-2.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-3.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-4.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-5.png" alt="">
            </div>
            <div class="brand-block">
                <img src="assets/media/icons/logo-6.png" alt="">
            </div>
        </div>
    </div>
    <!-- Brand Slider End -->

@endsection
