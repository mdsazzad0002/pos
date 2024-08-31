<script src="{{ asset('vendor/jquery/jquery.min.js') }}"></script>
<script type="text/javascript">
    var request_stracture =
    `
    <div class='ajax_filter'>
        <input type="search" class="form-control filter"/>
        <select class="form-control perpage_view">
            <option>5</option>
            <option>10</option>
            <option>20</option>
            <option>50</option>
            <option>100</option>
            <option>500</option>

        </select>
    </div>

    <div class='ajax_table'>
        <div class='ajax_content'>
            ........... your content
        </div>
        <div class='ajax_paginate'>
            ............ paginate links
        </div>
    </div>
    `


    $(function() {
        var parpage_here = 10;
        var keywords_search = '';
        $('.ajax_table').on('click', '.ajax_paginate a', function(e) {
            e.preventDefault();

            {{--  $('#load a').css('color', '#dfecf6');
            $('#load').append('<img style="position: absolute; left: 0; top: 0; z-index: 100000;" src="/images/loading.gif" />');  --}}

            var url = $(this).attr('href');
            getArticles(url);

        });


        if($('.ajax_filter .filter')){
            $('.ajax_filter .filter').on('keyup', function(){
                keywords_search = $(this).val();
                var url = '?perpage='+parpage_here+"&s="+keywords_search;
                getArticles(url)
            })
        }
        if($('.ajax_filter .perpage_view')){
            $('.ajax_filter .perpage_view').on('change', function(){
                parpage_here = $(this).val();
                var url = '?perpage='+parpage_here+"&s="+keywords_search;
                getArticles(url)
            })
        }

        function getArticles(url) {
            window.history.pushState("", "", url);
            $.ajax({
                url : url
            }).done(function (data) {
                $('.ajax_table').html(data);
                flasher.success('Successfully fatch data')
            }).fail(function () {
               flasher.error('Please try again')
            });
        }
    });

    </script>
