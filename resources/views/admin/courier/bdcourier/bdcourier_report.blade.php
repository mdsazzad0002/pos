
<div class="tracking_data">
    {{-- ajax load --}}
    <div class="border text-center p-3">
        Loding Courier Success Ratio Report</br>
        <div class="clearfix d-flex align-items-center justify-content-center gap-3 ">
            <div class="spinner-border float-end" role="status">
              <span class="visually-hidden"></span> 
            </div>
            Please Wait ...
          </div>
    </div>
    </div>
    
    <script>
        // documquent.addEventListener('DOMContentLoaded', function() {
            var url = "{{ url('bdcouriertracking?phone='.$phone) }}";
            var place_element = document.querySelector('.tracking_data');
            // ajax set
            var xhr = new XMLHttpRequest();
            xhr.open('GET', url, true);
            xhr.onload = function() {
                if (xhr.status === 200) {
                    place_element.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        // });
    </script>