<x-frontend_section title="false" :info="$variant_info" class="newslater_1" css="_newslater/_newslater1.css">

    <div class="container_of">
        <div class="content_size">
            <div class="title">
                {{ $variant_info->title ?? '' }}
            </div>
            <div class="sub_title">
                {{ $variant_info->sub_title ?? '' }}
            </div>

            <form data-action="{{ route('frontend.newslater.store') }}" method="post" class="informationForm">
                <div class="form-group">
                    @csrf
                    <input type="text" placeholder="Email" name="email" required class="form-control">
                    <button type="submit" class="cus-btn">Subscribe</button>
                </div>
                <div>
                    <span  class="loader text-white d-none">Please Wait ...</span>
                </div>
            </form>

        </div>
    </div>
</x-frontend_section>


