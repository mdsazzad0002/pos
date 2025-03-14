


@extends('layout.frontend_ajuba.master')

@section('title', $homepage->name)

@section('content')
    @foreach ($homepagemanage as $items)
    <div class="page_container page_container{{ $items->id }} target{{ $items->id}}" data-target=".target{{ $items->id}}">

            <div class="menu_of_settings_ btn-group">

                    <button class="btn btn-warning btn-sm " id="menu_of_settings_page_container{{ $items->id }}" onclick=" update_settings(this);
                        ">#{{$items->key}}</button>
                        
                    <button class="btn btn-info btn-sm " id="menu_of_settings_page_container{{ $items->id }}" onclick=" update_settings(this);
                        "><i class="fa fa-cog"></i></button>

            </div>

            @include('frontend.protfilio_theme.'.$items->key, ['variant_info'=> $items])

    </div>
    @endforeach


    <script>

function update_settings(thi) {
    window.parent.postMessage(
        {
            id_selected: thi.getAttribute('id'),
        },
        '*' // Ideally, replace '*' with a specific origin for security
    );
}

document.addEventListener("DOMContentLoaded", function () {
    let lastVisibleItems = new Set(); // Track currently visible items

    function checkVisibleSections() {
        let visibleItems = new Set();
        let windowHeight = window.innerHeight;
        let detectionTop = (windowHeight - (0.8 * windowHeight)) / 2; // Start of 80vh centered window
        let detectionBottom = detectionTop + (0.8 * windowHeight); // End of 80vh centered window

        document.querySelectorAll(".page_container").forEach(section => {
            let rect = section.getBoundingClientRect();

            // Check if the element is within the centered 80vh window
            if (rect.top < detectionBottom && rect.bottom > detectionTop) {
                let target = section.getAttribute('data-target');
                if (target) {
                    visibleItems.add(target);
                }
            }
        });

        // Convert to array and compare with last sent data
        let visibleArray = Array.from(visibleItems);
        let lastArray = Array.from(lastVisibleItems);

        // Only send if there are changes
        if (JSON.stringify(visibleArray) !== JSON.stringify(lastArray)) {
            console.log("Updated visible items:", visibleArray);


            document.querySelectorAll(".page_container").forEach(section => {
                section.classList.remove('active');
            })

            visibleArray.forEach((element, index) => {
                document.querySelector(element).classList.add('active');

            })


            window.parent.postMessage(
                {
                    id_selected_array: visibleArray,
                },
                '*' // Replace '*' with a specific origin for security
            );

            // Update last visible items
            lastVisibleItems = visibleItems;
        }
    }

    // **Run once on page load** to detect initially visible sections
    checkVisibleSections();

    // **Run on scroll to update visible items**
    window.addEventListener("scroll", checkVisibleSections);



    document.querySelectorAll(".page_container").forEach(section => {
        section.addEventListener("mouseenter", function () {
            let target = section.getAttribute('data-target');
            if (target) {
                window.parent.postMessage(
                    {
                        danger_active: target,
                    },
                    '*' // Replace '*' with a specific origin for security
                );
            }
        })
    })


});




    </script>
@endsection








@push('css')
<style>



.page_container{
    position:relative;
    border: 4px dotted #0077d9;
    min-height: 200px;
}
.page_container.active{
    border: 4px solid #09ac68;
}
.menu_of_settings_{
    position: absolute;
    /* position: sticky; */
    top: 0;
    right: 0;
    left:unset;
    z-index: 4;
}




</style>
@endpush


