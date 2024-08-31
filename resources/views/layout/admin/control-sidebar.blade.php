<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3 control-sidebar-content">
        <h5>Customize {{ settings('app_name_short', 9) }}</h5>
        <hr class="mb-2">
        <div class="mb-4">
            <input type="checkbox" {{ settings('theme_mode', 1) ? 'checked' : ''}}  value="1" class="mr-1 theme_mode">
            <span>Dark Mode</span>
        </div>
        <h6>Header Options</h6>
        <div class="mb-1">
            <input type="checkbox"  {{ settings('theme_layout-navbar-fixed', 1) ? 'checked' : ''}} value="1" class="mr-1 theme_layout-navbar-fixed">
            <span>Fixed</span>
        </div>
        <div class="mb-1">
            <input type="checkbox"  {{ settings('theme_dropdown-legacy', 1) ? 'checked' : ''}} value="1" class="mr-1 theme_dropdown-legacy">
            <span>Dropdown Legacy Offset</span>
        </div>
        <div class="mb-4">
            <input type="checkbox"  {{ settings('theme_border-bottom-0', 1) ? 'checked' : ''}} value="1" class="mr-1 theme_border-bottom-0">
            <span>No border</span>
        </div>
        <h6>Sidebar Options</h6>
        <div class="mb-1">
            <input type="checkbox"  {{ settings('theme_sidebar-collapse', 1) ? 'checked' : ''}} value="1" class="mr-1  theme_sidebar-collapse">
            <span>Collapsed</span>
        </div>
        <div class="mb-1">
            <input type="checkbox"  {{ settings('theme_layout-fixed', 1) ? 'checked' : ''}} value="1" checked="checked" class="mr-1 theme_layout-fixed">
            <span>Fixed</span>
        </div>
        <div class="mb-1">
            <input type="checkbox"  {{ settings('theme_sidebar-mini', 1) ? 'checked' : ''}} value="1" checked="checked" class="mr-1 theme_sidebar-mini">
            <span>Sidebar Mini</span>
        </div>
        <div class="mb-1">
            <input type="checkbox"  {{ settings('theme_sidebar-mini-md', 1) ? 'checked' : ''}} value="1" class="mr-1 theme_sidebar-mini-md "><span>Sidebar Mini MD</span>
        </div>
        <div class="mb-1">
            <input type="checkbox"  {{ settings('theme_sidebar-mini-xs', 1) ? 'checked' : ''}} value="1" class="mr-1 theme_sidebar-mini-xs">
            <span>Sidebar Mini XS</span>
        </div>
        <div class="mb-1">
            <input type="checkbox"  {{ settings('theme_nav-flat', 1) ? 'checked' : ''}} value="1" class="mr-1 theme_nav-flat">
            <span>Nav Flat Style</span>
        </div>
        <div class="mb-1">
            <input type="checkbox" value="1"  {{ settings('theme_nav-legacy', 1) ? 'checked' : ''}} class="mr-1 theme_nav-legacy">
            <span>Nav Legacy Style</span>
        </div>
        <div class="mb-1">
            <input type="checkbox" value="1"  {{ settings('theme_nav-compact', 1) ? 'checked' : ''}} class="mr-1 theme_nav-compact">
            <span>Nav Compact</span>
        </div>
        <div class="mb-1">
            <input type="checkbox"  {{ settings('theme_nav-child-indent', 1) ? 'checked' : ''}} value="1" class="mr-1 theme_nav-child-indent">
            <span>Nav Child Indent</span>
        </div>
        <div class="mb-1">
            <input type="checkbox" value="1"  {{ settings('theme_nav-collapse-hide-child', 1) ? 'checked' : ''}} class="mr-1 theme_nav-collapse-hide-child">
            <span>Nav Child Hide on Collapse</span>
        </div>
        <div class="mb-4">
            <input type="checkbox" value="1"  {{ settings('theme_sidebar-no-expand', 1) ? 'checked' : ''}} class="mr-1 theme_sidebar-no-expand">
            <span>Disable Hover/Focus Auto-Expand</span>
        </div>
        <h6>Footer Options</h6>
        <div class="mb-4">
            <input type="checkbox" {{ settings('theme_layout-footer-fixed', 1) ? 'checked' : ''}} value="1" class="mr-1 theme_layout-footer-fixed">
            <span>Fixed</span>
        </div>


        <h6>Navbar Variants</h6>
        <div class="d-flex">
            <select class="custom-select mb-3 text-light border-0 {{ settings('theme_navbar_bg', 1) ?? ''}} theme_navbar_bg" data-bg="{{ settings('theme_navbar_bg', 1) ?? ''}}">
                <option class="bg-white" value="bg-white">White</option>
                <option class="bg-primary" value="bg-primary">Primary</option>
                <option class="bg-secondary" value="bg-secondary">Secondary</option>
                <option class="bg-info" value="bg-info">Info</option>
                <option class="bg-success" value="bg-success">Success</option>
                <option class="bg-danger" value="bg-danger">Danger</option>
                <option class="bg-indigo" value="bg-indigo">Indigo</option>
                <option class="bg-purple" value="bg-purple">Purple</option>
                <option class="bg-pink" value="bg-pink">Pink</option>
                <option class="bg-navy" value="bg-navy">Navy</option>
                <option class="bg-lightblue" value="bg-lightblue">Lightblue</option>
                <option class="bg-teal" value="bg-teal">Teal</option>
                <option class="bg-cyan" value="bg-cyan">Cyan</option>
                <option class="bg-dark" value="bg-dark">Dark</option>
                <option class="bg-gray-dark" value="bg-gray-dark">Gray dark</option>
                <option class="bg-gray" value="bg-gray">Gray</option>
                <option class="bg-light" value="bg-light">Light</option>
                <option class="bg-warning" value="bg-warning">Warning</option>
                <option class="bg-orange" value="bg-orange">Orange</option>
            </select>
        </div>


        <h6> Sidebar Variants</h6>
        <div class="d-flex"></div>
        <select class="custom-select mb-3 text-light border-0 {{ settings('theme_dark_sidebar_variant', 1) ?? ''}} theme_dark_sidebar_variant" data-bg="{{ settings('theme_dark_sidebar_variant', 1) ?? ''}}"
            <option class="bg-white" value="dark-white">Dark White</option>
            <option class="bg-primary" value="dark-primary">Dark Primary</option>
            <option class="bg-secondary" value="dark-secondary">Dark Secondary</option>
            <option class="bg-info" value="dark-info">Dark Info</option>
            <option class="bg-success" value="dark-success">Dark Success</option>
            <option class="bg-danger" value="dark-danger">Dark Danger</option>
            <option class="bg-indigo" value="dark-indigo">Dark Indigo</option>
            <option class="bg-purple" value="dark-purple">Dark Purple</option>
            <option class="bg-pink" value="dark-pink">Dark Pink</option>
            <option class="bg-navy" value="dark-navy">Dark Navy</option>
            <option class="bg-lightblue" value="dark-lightblue">Dark Lightblue</option>
            <option class="bg-teal" value="dark-teal">Dark Teal</option>
            <option class="bg-cyan" value="dark-cyan">Dark Cyan</option>
            <option class="bg-dark" value="dark-dark">Dark Dark</option>
            <option class="bg-gray-dark" value="dark-gray-dark">Dark Gray dark</option>
            <option class="bg-gray" value="dark-gray">Dark Gray</option>
            <option class="bg-light" value="dark-light">Dark Light</option>
            <option class="bg-warning" value="dark-warning">Dark Warning</option>
            <option class="bg-orange" value="dark-orange">Dark Orange</option>\

            <option class="bg-white" value="light-white">Light White</option>
            <option class="bg-primary" value="light-primary">Light Primary</option>
            <option class="bg-lime" value="light-secondary">Light Secondary</option>
            <option class="bg-info" value="light-info">Light Info</option>
            <option class="bg-success" value="light-success">Light Success</option>
            <option class="bg-danger" value="light-danger">Light Danger</option>
            <option class="bg-indigo" value="light-indigo">Light Indigo</option>
            <option class="bg-purple" value="light-purple">Light Purple</option>
            <option class="bg-pink" value="light-pink">Light Pink</option>
            <option class="bg-navy" value="light-navy">Light Navy</option>
            <option class="bg-lightblue" value="light-lightblue">Light Lightblue</option>
            <option class="bg-teal" value="light-teal">Light Teal</option>
            <option class="bg-cyan" value="light-cyan">Light Cyan</option>
            <option class="bg-dark" value="light-dark">Light Dark</option>
            <option class="bg-fuchsia" value="light-fuchsia">Light Dark</option>
            <option class="bg-gray-dark" value="light-gray-dark">Light Gray dark</option>
            <option class="bg-maroon" value="light-maroon">Light  maroon</option>
            <option class="bg-orange" value="light-orange">Light  orange</option>
            <option class="bg-gray" value="light-gray">Light Gray</option>
            <option class="bg-light" value="light-light">Light Light</option>
            <option class="bg-warning" value="light-warning">Light Warning</option>
            <option class="bg-olive" value="light-olive">Light olive</option>
        </select>


        <h6>Brand Logo Variants</h6>
        <div class="d-flex">
            <select class="custom-select mb-3 text-light border-0 {{ settings('theme_brand_link', 1) ?? ''}} theme_brand_link" data-bg="{{ settings('theme_brand_link', 1) ?? ''}}">
                <option class="bg-white" value="bg-white">White</option>
                <option class="bg-primary" value="bg-primary">Primary</option>
                <option class="bg-secondary" value="bg-secondary">Secondary</option>
                <option class="bg-info" value="bg-info">Info</option>
                <option class="bg-success" value="bg-success">Success</option>
                <option class="bg-danger" value="bg-danger">Danger</option>
                <option class="bg-indigo" value="bg-indigo">Indigo</option>
                <option class="bg-purple" value="bg-purple">Purple</option>
                <option class="bg-pink" value="bg-pink">Pink</option>
                <option class="bg-navy" value="bg-navy">Navy</option>
                <option class="bg-lightblue" value="bg-lightblue">Lightblue</option>
                <option class="bg-teal" value="bg-teal">Teal</option>
                <option class="bg-cyan" value="bg-cyan">Cyan</option>
                <option class="bg-dark" value="bg-dark">Dark</option>
                <option class="bg-gray-dark" value="bg-gray-dark">Gray dark</option>
                <option class="bg-gray" value="bg-gray">Gray</option>
                <option class="bg-light" value="bg-light">Light</option>
                <option class="bg-warning" value="bg-warning">Warning</option>
                <option class="bg-orange" value="bg-orange">Orange</option>
            </select>
        </div>
</aside>


{{--  @push('js')  --}}
<script>
function ajax_data_setting_change(name, key, value){
    $.ajax({
        url:"{{ route('setting.store.update') }}",
        data:{
            'name':name,
            'key':key,
            'value':value,
        },
        success:function(data){
            console.log(data);
        }
    })
}

    // sidebar-mini layout-fixed control-sidebar-slide-open
// sidebar-mini layout-fixed control-sidebar-slide-open dark-mode
document.querySelector('.theme_mode').addEventListener('click', function () {

    document.body.classList.toggle('dark-mode');

    if(this.checked == true){
        ajax_data_setting_change('theme_mode', 1, 1)
    }else{
        ajax_data_setting_change('theme_mode', 1, 0)
    }

})


document.querySelector('.theme_layout-navbar-fixed').addEventListener('click', function () {
    document.body.classList.toggle('layout-navbar-fixed')
    if(this.checked == true){
        ajax_data_setting_change('theme_layout-navbar-fixed', 1, 1)
    }else{
        ajax_data_setting_change('theme_layout-navbar-fixed', 1, 0)
    }
})


document.querySelector('.theme_dropdown-legacy').addEventListener('click', function () {
    document.querySelector('nav').classList.toggle('dropdown-legacy')
    if(this.checked == true){
        ajax_data_setting_change('theme_dropdown-legacy', 1, 1)
    }else{
        ajax_data_setting_change('theme_dropdown-legacy', 1, 0)
    }
})


document.querySelector('.theme_border-bottom-0').addEventListener('click', function () {
    document.querySelector('nav').classList.toggle('border-bottom-0')
    if(this.checked == true){
        ajax_data_setting_change('theme_border-bottom-0', 1, 1)
    }else{
        ajax_data_setting_change('theme_border-bottom-0', 1, 0)
    }
})


document.querySelector('.theme_sidebar-collapse').addEventListener('click', function () {
    document.body.classList.toggle('sidebar-collapse')
    if(this.checked == true){
        ajax_data_setting_change('theme_sidebar-collapse', 1, 1)
    }else{
        ajax_data_setting_change('theme_sidebar-collapse', 1, 0)
    }
})


document.querySelector('.theme_layout-fixed').addEventListener('click', function () {
    document.body.classList.toggle('layout-fixed')
    if(this.checked == true){
        ajax_data_setting_change('theme_layout-fixed', 1, 1)
    }else{
        ajax_data_setting_change('theme_layout-fixed', 1, 0)
    }
})

document.querySelector('.theme_sidebar-mini').addEventListener('click', function () {
    document.body.classList.toggle('sidebar-mini')
    if(this.checked == true){
        ajax_data_setting_change('theme_sidebar-mini', 1, 1)
    }else{
        ajax_data_setting_change('theme_sidebar-mini', 1, 0)
    }
})

document.querySelector('.theme_sidebar-mini-md').addEventListener('click', function () {
    document.body.classList.toggle('sidebar-mini-md')
    if(this.checked == true){
        ajax_data_setting_change('theme_sidebar-mini-md', 1, 1)
    }else{
        ajax_data_setting_change('theme_sidebar-mini-md', 1, 0)
    }
})


document.querySelector('.theme_sidebar-mini-xs').addEventListener('click', function () {
    document.body.classList.toggle('sidebar-mini-xs')
    if(this.checked == true){
        ajax_data_setting_change('theme_sidebar-mini-xs', 1, 1)
    }else{
        ajax_data_setting_change('theme_sidebar-mini-xs', 1, 0)
    }
})

document.querySelector('.theme_nav-flat').addEventListener('click', function () {
    document.querySelector('nav ul.nav').classList.toggle('nav-flat')
    if(this.checked == true){
        ajax_data_setting_change('theme_nav-flat', 1, 1)
    }else{
        ajax_data_setting_change('theme_nav-flat', 1, 0)
    }
})

document.querySelector('.theme_nav-legacy').addEventListener('click', function () {
    document.querySelector('nav ul.nav').classList.toggle('nav-legacy')
    if(this.checked == true){
        ajax_data_setting_change('theme_nav-legacy', 1, 1)
    }else{
        ajax_data_setting_change('theme_nav-legacy', 1, 0)
    }
})

document.querySelector('.theme_nav-compact').addEventListener('click', function () {
    document.querySelector('nav ul.nav').classList.toggle('nav-compact')
    if(this.checked == true){
        ajax_data_setting_change('theme_nav-compact', 1, 1)
    }else{
        ajax_data_setting_change('theme_nav-compact', 1, 0)
    }
})


document.querySelector('.theme_nav-child-indent').addEventListener('click', function () {
    document.querySelector('nav ul.nav').classList.toggle('nav-child-indent')
    if(this.checked == true){
        ajax_data_setting_change('theme_nav-child-indent', 1, 1)
    }else{
        ajax_data_setting_change('theme_nav-child-indent', 1, 0)
    }
})

document.querySelector('.theme_nav-collapse-hide-child').addEventListener('click', function () {
    document.querySelector('nav ul.nav').classList.toggle('nav-collapse-hide-child')
    if(this.checked == true){
        ajax_data_setting_change('theme_nav-collapse-hide-child', 1, 1)
    }else{
        ajax_data_setting_change('theme_nav-collapse-hide-child', 1, 0)
    }
})

document.querySelector('.theme_sidebar-no-expand').addEventListener('click', function () {
    document.querySelector('aside.main-sidebar').classList.toggle('nav-sidebar-no-expand')
    if(this.checked == true){
        ajax_data_setting_change('theme_sidebar-no-expand', 1, 1)
    }else{
        ajax_data_setting_change('theme_sidebar-no-expand', 1, 0)
    }
})


document.querySelector('.theme_layout-footer-fixed').addEventListener('click', function () {
    document.body.classList.toggle('layout-footer-fixed')
    if(this.checked == true){
        ajax_data_setting_change('theme_layout-footer-fixed', 1, 1)
    }else{
        ajax_data_setting_change('theme_layout-footer-fixed', 1, 0)
    }
})



document.querySelector('.theme_navbar_bg').addEventListener('change', function () {
    var current_color = this.value;
    var previous_color = this.getAttribute('data-bg');
    this.dataset.bg = current_color;


    document.querySelector('nav.main-header').classList.toggle(previous_color);
    document.querySelector('nav.main-header').classList.toggle(current_color);


    this.classList.toggle(current_color);
    this.classList.toggle(previous_color);


        ajax_data_setting_change('theme_navbar_bg', 1, current_color)



})

document.querySelector('.theme_brand_link').addEventListener('change', function () {
    var current_color = this.value;
    var previous_color = this.getAttribute('data-bg');
    this.dataset.bg = current_color;


    document.querySelector('aside.main-sidebar .brand-link').classList.remove(previous_color);
    document.querySelector('aside.main-sidebar .brand-link').classList.add(current_color);


    this.classList.toggle(current_color);
    this.classList.toggle(previous_color);
    ajax_data_setting_change('theme_brand_link', 1, current_color)

})


document.querySelector('.theme_dark_sidebar_variant').addEventListener('change', function () {
    var current_color = this.value;
    var previous_color = this.getAttribute('data-bg');
    this.dataset.bg = current_color;

    this.classList.add(current_color);
    this.classList.remove(previous_color);


    document.querySelector('aside.main-sidebar').classList.remove('sidebar-'+previous_color);
    document.querySelector('aside.main-sidebar').classList.add('sidebar-'+current_color);

    ajax_data_setting_change('theme_dark_sidebar_variant', 1, current_color)



})



</script>
{{--  @endpush  --}}
