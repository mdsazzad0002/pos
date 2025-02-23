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

<script>
    function printElement(selector) {
    let element = document.querySelector(selector);
    if (!element) {
        console.error("Element not found!");
        return;
    }

    let newWindow = window.open('', '_blank');
    newWindow.document.write(`<html><head><title>Print</title></head><body>`);
    newWindow.document.write(element.innerHTML);
    newWindow.document.write(`</body></html>`);
    newWindow.document.close();
    newWindow.print();
    newWindow.close();
}

</script>


@endsection

@push('js')
@livewireScripts
@endpush
