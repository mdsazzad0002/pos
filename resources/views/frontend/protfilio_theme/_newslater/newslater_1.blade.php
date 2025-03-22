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


<style>
    section#newslater_1 {
        min-height:450px;
        display:flex;
        align-items:center;
    }

    section#newslater_1 .container_of {
        padding: 100px;
        max-width: 80vw;
        width: 1000px;
    }

    section#newslater_1 .container_of .title{
        font-size:35px;
        font-family:sans-serif;
        margin-bottom:20px;
        font-weight:700;
        color:rgb(255, 255, 255);
        line-height: normal;
        
    }

    section#newslater_1 .container_of .sub_title {
        font-size:15px;
        font-family:sans-serif;
        margin-bottom:20px;
        color:rgb(255, 255, 255);
    }

    section#newslater_1 .form-group {
        display:flex;
        gap:15px;
    }

    section#newslater_1 .container_of input{
        background:white;
    } 
    .form-control:focus {
       color: #ffffff !important;
    }


</style>