<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\Visitor;
use Carbon\Carbon;
use Jenssegers\Agent\Agent; // Import the Agent class

class TrackUniqueVisitor
{
    public function handle(Request $request, Closure $next)
    {
        // Get the visitor's IP address and user agent
        $ipAddress = $request->ip();
        $userAgent = $request->header('User-Agent');
        $visitDate = Carbon::today()->toDateString(); // Get today's date in 'YYYY-MM-DD' format

        // Initialize the Agent instance to parse the user agent
        $agent = new Agent();
        $agent->setUserAgent($userAgent);

        // Extract the browser name from the user agent
        $browser = $agent->browser(); // Get the browser name (e.g., Chrome, Firefox, Safari)

        // Check if the visitor is already recorded today
        $visitorExists = Visitor::where('ip_address', $ipAddress)
                                ->where('visit_date', $visitDate)
                                ->exists();

        // If not, store the visitor information in the database
        if (!$visitorExists) {
            Visitor::create([
                'ip_address' => $ipAddress,
                'user_agent' => $userAgent ?? '',
                'browser' => $browser ?? '', // Store the browser name
                'visit_date' => $visitDate
            ]);
        }

        // Continue with the request
        return $next($request);
    }
}
