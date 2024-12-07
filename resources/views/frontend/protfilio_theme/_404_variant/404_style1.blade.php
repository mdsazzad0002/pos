<main class="main-wrapper bg-lightest-gray">
<section class="error-section py-40">
    <div class="container-fluid">
        <div class="error-wrapper text-center py-40 bg-white br-10">
            <h1 class="mb-32">404</h1>
            <h5 class="mb-16"><span class="color-primary">Opps!</span> {{ $title ?? 'Something is wrong' }}</h5>
            <p class="light-gray mb-32">{{ $details ?? 'This page is temporarily unavailable or has been moved.' }}</p>
            <a href="{{ url('/') }}" class="cus-btn">Back to Home Page</a>
        </div>
    </div>
</section>
</main>
