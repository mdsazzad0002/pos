<?php

namespace App\Livewire;

use App\Models\order;
use Carbon\Carbon;
use Livewire\Component;

class SalesReportMonth extends Component
{
    // app/Http/Livewire/SalesReport.php


    public $salesData;
    public $labels;
    public $salesValues;
    public $currencySymbol;
    // public $salesData;
    // public $labels;
    // public $salesValues;
    public $percentageChange;
    public $lastSalesValue;
    public $previousSalesValue;


    public function mount()
    {
        $this->currencySymbol =settings('currency_symbol', 9);
        // Get the current date and calculate the last month's date
      // Get the current date and calculate the last month's date
      $endDate = Carbon::now();
      $startDate = $endDate->copy()->subMonth();

      // Get the sales data for the past month
      $sales = Order::whereBetween('created_at', [$startDate, $endDate])
          ->selectRaw('SUM(price) as total_sales, DATE(created_at) as sale_date')
          ->groupBy('sale_date')
          ->orderBy('sale_date')
          ->get();

      // Process the data into 3-day intervals
      $intervals = [];
      $currentInterval = 0;
      $salesForInterval = 0;
      $intervalStartDate = null;

      foreach ($sales as $sale) {
          $saleDate = Carbon::parse($sale->sale_date);
          if ($intervalStartDate === null) {
              $intervalStartDate = $saleDate;
          }

          $salesForInterval += $sale->total_sales;

          // If we have reached 3 days, save the data for that interval
          if ($saleDate->diffInDays($intervalStartDate) >= 3) {
              $intervals[] = [
                  'label' => $intervalStartDate->format('M j') . ' - ' . $saleDate->format('M j'),
                  'sales' => $salesForInterval
              ];
              $intervalStartDate = $saleDate;
              $salesForInterval = $sale->total_sales;
          }
      }

      // If there are leftover sales for the last partial interval
      if ($salesForInterval > 0) {
          $intervals[] = [
              'label' => $intervalStartDate->format('M j') . ' - ' . $saleDate->format('M j'),
              'sales' => $salesForInterval
          ];
      }

      // Now calculate the percentage change between the last 3 days and the previous 3 days
      if (count($intervals) >= 2) {
          // Get the sales values for the last two intervals (last 3 days and previous 3 days)
          $this->lastSalesValue = $intervals[count($intervals) - 1]['sales'];
          $this->previousSalesValue = $intervals[count($intervals) - 2]['sales'];

          // Calculate the percentage change
          $this->percentageChange = ($this->lastSalesValue - $this->previousSalesValue) / $this->previousSalesValue * 100;
      } else {
          $this->percentageChange = 0; // Default value if there's not enough data
      }

      $this->salesData = $intervals;
      $this->labels = array_column($intervals, 'label');
      $this->salesValues = array_column($intervals, 'sales');
    }

    public function render()
    {
        return view('livewire.sales-report-month');
    }
}
