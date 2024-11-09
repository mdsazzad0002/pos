





        <h3>{{ $homePageManage->name }}</h3>
        <ul id="sortable" class="accordion">

        @foreach($homePageManage->home_page as $key => $item)
            <li id="{{ $item->id }}" >
                <div class="row">
                    <div class="col-md-12">
                        @include('admin.protfilio_theme.page.partials._builder_partials')
                    </div>
                    <div class="col-md-12">
                        <div>
                            <iframe class="iframe_preview" src="{{ url($item->page->slug.'?preview_page='.$item->id) }}" frameborder="0" style="overflow:hidden;height:100%;width:100%" height="100%" width="100%"></iframe>
                        </div>
                    </div>

                </div>
            </li>

            @endforeach
        </ul>

        <script>
            // Function to adjust the height of the iframe
            document.querySelectorAll('iframe').forEach(element => {
            // Check if the iframe has loaded and if we can access its content
                element.onload = function() {
                    try {
                        // Access the iframe's document and adjust the height
                        const height = element.contentWindow.document.documentElement.scrollHeight;
                        element.style.height = height + 'px'; // Set the height of the iframe
                    } catch (e) {
                        console.error("Unable to access iframe content:", e);
                    }
                };
            });

        </script>
@push('css')
 <style>
    iframe{
        min-height: 250px;
    }
 </style>
@endpush

