{{-- Master Include  --}}
@extends('layout.admin.master')

{{-- Define Site Title  --}}
@section('title',__('settings.smtp_setting'))

{{-- Content Extends  --}}
@section('content')


<x-summary>
    <div class="row connectedSortable mb-2">
        @include('admin.dashboard._cards.smtp')
    </div>
</x-summary>


<div class="row">
    <div class=" col-lg-4 col-12">
        <div class="suggession_templateing">
            <div class="card">
                <div class="card-header">
                    Template & Menu
                </div>
                <div class="card-body p-0">
                    <div class="nav  flex-column flex-sm-row flex-lg-column  nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                      @include('admin.MailConfiguration._partials_part.menu')
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class=" col-lg-8 col-12">
        <div class="tab-content" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-smtp" role="tabpanel" aria-labelledby="v-pills-smtp-tab">
                @include('admin.MailConfiguration._partials_part.smtp')
            </div>

            @foreach ($mail_template as $key => $items)
                <form class="tab-pane fade form_ajax_submit" action="{{ route('admin.mail.update', $items->id) }}" id="v-pills-{{ $key }}" role="tabpanel" aria-labelledby="v-pills-{{ $key }}-tab" method="POST">
                  @method('put')
                  @csrf
                    <div class="col-lg-12">
                        <div class="card">
                            <label class="card-header">
                                Description
                            </label>
                            <div class="card-body">

                                <textarea type="text" name="description" class="form-control summernote {{ $items->name }}" placeholder="Description">{{ $items->template }}</textarea>
                                <div class="items_list_list_mail my-2 " data-target=".{{ $items->name }}">
                                    @foreach (explode(',', $items->keywords) as $word)
                                        <span>`{{ $word }}`</span>
                                    @endforeach
                                </div>
                                <button class="btn btn-primary mt-2">Save</button>
                            </div>
                        </div>

                    </div>
                </form>
            @endforeach


        </div>
    </div>
</div>



@endsection

@push('js')
    <script>
        document.querySelectorAll('.items_list_list_mail').forEach(element=>{
            var target_element = element.getAttribute('data-target');
            var items =  element.querySelectorAll('span').forEach(item =>{
                item.addEventListener('click', function(){
                   $(target_element).summernote('insertText', this.innerHTML);

                    $(target_element).summernote('focus');
                })
            })
        });

    </script>
@endpush

