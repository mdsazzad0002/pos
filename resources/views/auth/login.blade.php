<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('login') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('log.Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('log.Password')" />

            <x-text-input id="password" class="block mt-1 w-full"
                            type="password"
                            name="password"
                            required autocomplete="current-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Remember Me -->
        <div class="block mt-4">
            <label for="remember_me" class="inline-flex items-center">
                <input id="remember_me" type="checkbox" class="rounded dark:bg-gray-900 border-gray-300 dark:border-gray-700 text-indigo-600 shadow-sm focus:ring-indigo-500 dark:focus:ring-indigo-600 dark:focus:ring-offset-gray-800" name="remember">
                <span class="ms-2 text-sm text-gray-600 dark:text-gray-400">{{ __('log.Remember_me') }}</span>
            </label>
        </div>




        <div class="flex items-center justify-end mt-4">
            @if (Route::has('password.request'))
                <a class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800" href="{{ route('password.request') }}">
                    {{ __('log.Forgot_your_password?') }}
                </a>
            @endif

            
            <x-primary-button class="ms-3">
                {{ __('log.in') }}
            </x-primary-button>
        </div>
        <br>
        <span class=" text-gray-200 dark:text-gray-400">{{ __('log.choose_your_language') }}  - </span>
        @foreach ($language as $items)
        <a class=" text-gray-600 dark:text-gray-400" href="{{ url('locale/'.$items->id) }}">{{ Str::title($items->name) }}</a>
        @endforeach
    </form>
    @if (settings('is_demo_mode_status', 9) == 1)
    <br/>
    <span class=" text-gray-200 dark:text-gray-400 border border-gray-400 p-2 rounded cursor-pointer block"
        onclick="
        document.getElementById('email').value = 'admin@gmail.com';
        document.getElementById('password').value = 'admin@gmail.com';
        "
    >
        Demo Mode Login Credentials <br>
        <hr>
        Email : admin@gmail.com <br>
        Password : admin@gmail.com <br/>
    </span>
    @endif
</x-guest-layout>
