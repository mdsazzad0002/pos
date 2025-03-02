<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CalendarEvent;
use Carbon;
class CalendarEventController extends Controller
{
    public function index(){
        $events = CalendarEvent::all();

        if ($events->count() > 0) {
            $data_arr = [];

            foreach ($events as $key => $event) {
                $data_arr[$key]['id'] = $event->id;
                $data_arr[$key]['title'] = $event->event_name;
                $data_arr[$key]['start'] = Carbon\Carbon::parse($event->event_start_date)->format('Y-m-d');
                $data_arr[$key]['end'] = Carbon\Carbon::parse($event->event_end_date)->format('Y-m-d'); //$event->event_end_date->format('Y-m-d');
                $data_arr[$key]['backgroundColor'] = '#' . substr(uniqid(), -6); // Random color
                $data_arr[$key]['color'] = '#' . substr(uniqid(), -6); // Random color
            }

            return response()->json([
                'status' => true,
                'msg' => 'Successfully retrieved!',
                'data' => $data_arr
            ]);
        }

        return response()->json([
            'status' => true,
            'msg' => 'No events found!', 'data' => []
        ]);

    }


    public function store(Request $request){
        $event = new CalendarEvent();
        $event->event_name = $request->event_name;
        $event->event_description = $request->event_description ?? '';
        $event->event_color = $request->event_color ?? 'green';
        $event->event_start_date = $request->event_start_date;
        $event->event_end_date = $request->event_end_date;
        $event->save();

        return response()->json([

            'status' => true,
            'msg' => 'Event created successfully!',
            'data' => $event
        ]);
    }

    public function destroy(Request $request, $id){
        $event = CalendarEvent::find($id);
        $event->delete();
        return response()->json([
            'status' => true,
            'msg' => 'Event Deleted successfully!',
            'data' => $event
        ]);
    }
}
