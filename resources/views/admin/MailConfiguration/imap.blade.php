{{-- Master Include  --}}
@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title', __('settings.smtp_setting'))

{{-- Content Extends  --}}
@section('content')


   <!-- Include Livewire component -->
   <livewire:imap-inbox />



<style>
    li.nav-item.active {
    background: #1ee5c5;
}
</style>


@endsection

@push('js')
@endpush
