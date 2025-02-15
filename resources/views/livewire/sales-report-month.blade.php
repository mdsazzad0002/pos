<div>
    {{-- The Master doesn't talk, he acts. --}}
    <!-- resources/views/livewire/sales-report.blade.php -->
<div class="card">
    <div class="card-header">
        <div class="d-flex justify-content-between">
            <h3 class="card-title">Order Report</h3>
            <a href="{{ route('admin.order.index') }}">View Order</a>
        </div>
    </div>
    <div class="card-body">
        <div class="d-flex">
            <p class="d-flex flex-column">
                <span class="text-bold text-lg">{{$currencySymbol.' '. number_format(array_sum($salesValues), 2) }}</span>
                <span>Order Over Time</span>
            </p>
            <p class="ml-auto d-flex flex-column text-right">
                @if ($percentageChange >= 0)
                    <span class="text-success">
                        <i class="fas fa-arrow-up"></i> {{ number_format($percentageChange, 1) }}%
                    </span>
                @else
                    <span class="text-danger">
                        <i class="fas fa-arrow-down"></i> {{ number_format($percentageChange, 1) }}%
                    </span>
                @endif
                <span class="text-muted">Since last 3 days</span>
            </p>
        </div>
        <!-- /.d-flex -->

        <div class="position-relative mb-4">
            <canvas id="sales-chart" height="200"></canvas>
        </div>

        <div class="d-flex flex-row justify-content-end">
            <span class="mr-2">
                <i class="fas fa-square text-primary"></i> Recent Order Report
            </span>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var ticksStyle = {
            fontColor: '#495057',
            fontStyle: 'bold'
        }

        var mode = 'index'
        var intersect = true

        var $salesChart = $('#sales-chart')
        // eslint-disable-next-line no-unused-vars
        var salesChart = new Chart($salesChart, {
            type: 'bar',
            data: {
                labels: @json($labels),  // Dynamic labels from Livewire
                datasets: [
                    {
                        backgroundColor: '#007bff',
                        borderColor: '#007bff',
                        data: @json($salesValues)  // Dynamic sales data from Livewire
                    },
                ]
            },
            options: {
                maintainAspectRatio: false,
                tooltips: {
                    mode: mode,
                    intersect: intersect
                },
                hover: {
                    mode: mode,
                    intersect: intersect
                },
                legend: {
                    display: false
                },
                scales: {
                    yAxes: [{
                        gridLines: {
                            display: true,
                            lineWidth: '4px',
                            color: 'rgba(0, 0, 0, .2)',
                            zeroLineColor: 'transparent'
                        },
                        ticks: {
                            beginAtZero: true,
                            callback: function (value) {
                                if (value >= 1000) {
                                    value /= 1000
                                    value += 'k'
                                }

                                return '{{ $currencySymbol }}' + value
                            }
                        }
                    }],
                    xAxes: [{
                        display: true,
                        gridLines: {
                            display: false
                        },
                        ticks: ticksStyle
                    }]
                }
            }
        })
    })
</script>

</div>
