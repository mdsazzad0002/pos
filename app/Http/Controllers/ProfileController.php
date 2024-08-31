<?php

namespace App\Http\Controllers;

use Illuminate\View\View;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use Spatie\Permission\Models\Permission;
use App\Http\Requests\ProfileUpdateRequest;
use Illuminate\Support\Facades\Hash;

//
// use Spatie\Permission\Models\Role;
// use Spatie\Permission\Models\Permission;


class ProfileController extends Controller
{
    /**
     * Display the user's profile form.
     */
    public function edit(Request $request)

    {

        // // create roll
        // $role = Role::create(['name' => 'writer']);


        // // create permission
        // $permission = Permission::create(['name' => 'edit articles']);

        // $role->givePermissionTo($permission);
        // $permission->assignRole($role);

        // $role->revokePermissionTo($permission);
        // $permission->removeRole($role);



        return view('admin.profile.index', [
            'user' => $request->user(),
        ]);
    }

    /**
     * Update the user's profile information.
     */
    public function update(Request $request)//: RedirectResponse
    {
        // $request->user()->fill($request->validated());
        // return $request;

        if($request->hasFile('profile_pic')){
            $request->user()->upload_id = uploads($request->file('profile_pic'), $request->user()->upload_id);
        }elseif($request->has('old')){
            if($request->new == $request->re){

                if (!Hash::check($request->old, $request->user()->password)) {
                    return json_encode([
                        'title'=>'Current password is incorrect',
                        'type'=>'error',
                        'refresh'=>'false',
                    ]);
                }

                $request->user()->password = Hash::make($request->new);
                $request->user()->save();
                
                return json_encode([
                    'title'=>'Successfully changed password',
                    'type'=>'success',
                    'refresh'=>'false',
                    
                ]);
            }else{
                return json_encode([
                    'title'=>'Confirm password not match',
                    'type'=>'error',
                    'refresh'=>'false',
                ]);
                
            }

        }else{
            // if ($request->user()->isDirty('email')) {
            //     $request->user()->email_verified_at = null;
            // }
            $request->user()->name = $request->name;
            $request->user()->save();

            return json_encode([
                'title'=>'Updated data',
                'type'=>'success',
                'refresh'=>'false',
                'page'=>'true',
            ]);
        }

        $request->user()->save();
        // dd('dfgs');
        return Redirect::route('admin.profile.edit')->with('status', 'profile-updated');
    }

    /**
     * Delete the user's account.
     */
    public function destroy(Request $request): RedirectResponse
    {
        $request->validateWithBag('userDeletion', [
            'password' => ['required', 'current_password'],
        ]);

        $user = $request->user();

        Auth::logout();

        $user->delete();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return Redirect::to('/');
    }
    public function info_edit(){
        return view('admin.profile.partials.edit', ['user' => auth()->user()]);
    }
    public function password_edit(){
        return view('admin.profile.partials.password', ['user' => auth()->user()]);
    }
}
