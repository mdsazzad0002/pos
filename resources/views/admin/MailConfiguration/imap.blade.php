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

.compose_box {
    position: fixed;
    z-index: 99999;
    right: 0;
    width: 100%;
    max-width: 450px;
    bottom: 0;
    max-height: 70%;

}

button.fixed_write_message {
    position: fixed;
    right: 24px;
    bottom: 70px;
    z-index: 1046;
    border: none;
    background: #fff;
    border: 1px solid gray;
    border-radius: 50%;
    padding: 15px;
    /* aspect-ratio: 1/1; */
    width: 40px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #216573;
    color: white;
}



.compose_box .card-body {
    overflow:auto;
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
