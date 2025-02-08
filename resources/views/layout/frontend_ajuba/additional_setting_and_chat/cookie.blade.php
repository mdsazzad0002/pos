
@if(settings('cookie_status', 40))

<style>
    /* Google Fonts - Poppins */


    .cookie_wrapper {
        position: fixed;
        bottom: 50px;
        right: -370px;
        max-width: 345px;
        width: 100%;
        background: {{ settings('cookie_bg_color', 40) }};
        border-radius: 8px;
        padding: 15px 25px 22px;
        transition: right 0.3s ease;
        box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        z-index: 9999;
    }

    .cookie_wrapper.show {
        right: 20px;
    }
    .cookie_wrapper i.fas.fa-cookie{
        font-size: 40px;
        color: #d84a08;
    }
    .cookie_wrapper.show h2{
        color:{{ settings('cookie_btn_1_color', 40) }};
    }



.cookie_wrapper.show .data a{
     color:{{ settings('cookie_btn_1_color', 40) }};
}
.cookie_wrapper.show  .buttons{
    display:flex;
    gap:20px
}
.cookie_wrapper.show  .buttons button.cookiebtn {
    color:{{ settings('cookie_btn_1_color', 40) }};
    padding:10px 15px;
    background:{{ settings('cookie_btn_1_color_bg', 40) }};
    border:none;
    outline:none;
    border-radius:3px;
    width:50%;

}


.cookie_wrapper.show  .buttons button.cookiebtn:last-child {
    color:{{ settings('cookie_btn_1_color', 40) }};
    padding:10px 15px;
    background:{{ settings('cookie_btn_2_color_bg', 40) }};
    border:none;
    outline:none;
    border-radius:3px;
    width:50%;

}

.cookie_wrapper.show  .buttons button.cookiebtn:hover{
    cursor:pointer;
    opacity:.6;
}




</style>





<!-- Boxicons CSS -->

<div class="cookie_wrapper">
    <header>
        <i class="{{settings('cookie_i_con_class_title', 40)}}"></i>
        <h2>{{settings('cookie_title', 40)}}</h2>
    </header>

    <div class="data">
        <p>{{ settings('cookie_description', 40) }} <a href="{{ settings('cookie_link',40) }}"> {{ settings('cookie_link_text',40)}}</a></p>
    </div>

    <div class="buttons">
        <button class="cookiebtn" id="acceptBtn">{{ settings('cookie_accept_btn',40) }}</button>
        <button class="cookiebtn" id="declineBtn">{{ settings('cookie_declined_btn',40) }}</button>
    </div>
</div>


<script>
    const cookieBox = document.querySelector(".cookie_wrapper");
    const buttons = cookieBox.querySelectorAll(".cookiebtn");


    const executeCodes = () => {
        //if cookie contains codinglab it will be returned and below of this code will not run
        if (document.cookie.includes("laravel_cookie_consent")) return;
        cookieBox.classList.add("show");

        buttons.forEach((button) => {
            button.addEventListener("click", () => {
                cookieBox.classList.remove("show");

                //if button has acceptBtn id
                if (button.id == "acceptBtn") {
                    //set cookies for 1 month. 60 = 1 min, 60 = 1 hours, 24 = 1 day, 30 = 30 days
                    document.cookie = "laravel_cookie_consent = {{ url('/') }}; max-age=" + 60 * 60 * 24 * 30;
                }
            });
        });
    };

    //executeCodes function will be called on webpage load
    window.addEventListener("load", executeCodes);

</script>

@endif
