<div>
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Browser Usage</h3>

            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                </button>
                {{-- <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                </button> --}}
            </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="row">
                <div class="col-md-8">
                    <div class="chart-responsive">
                        <canvas id="pieChart" height="150"></canvas>
                    </div>
                    <!-- ./chart-responsive -->
                </div>
                <!-- /.col -->
                <div class="col-md-4">
                    <ul class="chart-legend clearfix">
                        <li><i class="far fa-circle text-danger"></i> Chrome</li>
                        <li><i class="far fa-circle text-success"></i> IE</li>
                        <li><i class="far fa-circle text-warning"></i> FireFox</li>
                        <li><i class="far fa-circle text-info"></i> Safari</li>
                        <li><i class="far fa-circle text-primary"></i> Opera</li>
                        <li><i class="far fa-circle text-secondary"></i> Others</li>
                    </ul>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        {{-- <div class="card-footer p-0" style="max-height: 160px;overflow: auto;margin-bottom: 10px;">
            <br>
           &nbsp;   &nbsp; Website Visit  History by Country
            <ul class="nav nav-pills flex-column">
                @foreach($topitems_ip as $key => $items)

                <li class="nav-item">
                  <a href="javascript:void(0);" class="nav-link">
                    @php
                        $location = getLocation($items->ip_address);
                        @endphp
                    @if ($location->status == 'fail')
                    @continue
                    @endif

                    {{($location?->country ?? '' ).', '.( $location?->city ?? '')}}
                    <span class="float-right text-success">
                      <i class="fas fa-arrow-right text-sm"></i>
                      {{number_format($items->percentage,2)}}%</span>
                  </a>
                </li>
                @endforeach

            </ul>
          </div> --}}
          @if (count($topitems_ip) == 0)
          {{-- <div wire:poll.600ms.once="getBrowserData"></div> --}}

          @endif
    </div>
<script>
    document.addEventListener('DOMContentLoaded', function () {
      //-------------
  // - PIE CHART -
  //-------------
  // Get context with jQuery - using jQuery's .get() method.
  var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
  var pieData = {
    labels: @json($browsers),
    datasets: [
      {
        data:@json(array_values($browserData)),
        backgroundColor: @json($colors)
      }
    ]
  }
  var pieOptions = {
    legend: {
      display: false
    }
  }
  // Create pie or douhnut chart
  // You can switch between pie and douhnut using the method below.
  // eslint-disable-next-line no-unused-vars
  var pieChart = new Chart(pieChartCanvas, {
    type: 'doughnut',
    data: pieData,
    options: pieOptions
  })

  //-----------------
  // - END PIE CHART -
  //-----------------
})

</script>
</div>
