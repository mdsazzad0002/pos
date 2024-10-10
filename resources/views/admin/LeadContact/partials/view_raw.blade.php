<table class="table talbe-bordered border table-striped table-hover">
    {{--  Contact Info  --}}
     <tr>
         <td colspan="2">Contact Info :</td>
     </tr>
     <tr>
         <td> Name</td>
         <td>{{ $LeadContact->name }}</td>
     </tr>
     <tr>
         <td> Phone</td>
         <td>{{ $LeadContact->phone }}</td>
     </tr>
     <tr>
         <td> Email</td>
         <td>{{ $LeadContact->email }}</td>
     </tr>
     <tr>
         <td> Address</td>
         <td>{{ $LeadContact->address }}</td>
     </tr>
     <x-quick.table_action_info :info='$LeadContact'/>
 </table>
