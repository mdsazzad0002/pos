
<tr>
    <td>Creator</td>
    <td>{{ $info->user->name ?? ''  }}</td>
</tr>
<tr>
    <td>Updater</td>
    <td>{{ $info->updater->name ?? ''  }}</td>
</tr>
<tr>
    <td>Updated At</td>
    <td>{{ $info->updated_at?->format('d-F-Y h:i:s A') ?? ''  }}</td>
</tr>
<tr>
    <td>Created At</td>
    <td>{{ $info->created_at?->format('d-F-Y h:i:s A') ?? ''  }}</td>
</tr>
