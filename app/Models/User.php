<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Carbon\Carbon;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Traits\HasRoles;
// use Illuminate\Support\Facades\Notification;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use IvanoMatteo\LaravelDeviceTracking\Traits\UseDevices;
use App\Models\Device;


class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    use HasRoles;
    // use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $appends = ['image', 'last_active'];
    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    // public function routeNotificationForVonage(Notification $notification): string
    // {
    //     return $this->mobile_number;
    // }

    public function getImageAttribute(){
        return dynamic_asset($this->upload_id);
    }
    public function getLastActiveAttribute(){
        $lastActiveDevice = Device::where('creator', $this->id)->orderBy('last_activity', 'desc')->first();
        if ($lastActiveDevice) {
            // Get the last activity time
            $lastActivityTime = Carbon::parse($lastActiveDevice->last_activity);

            // Check if the last activity was within the last 5 minutes
            if ($lastActivityTime->gte(Carbon::now()->subMinutes(5))) {
                return 'active'; // User is active
            }
        }

        return 'status-offline'; // User is inactive

    }
}
