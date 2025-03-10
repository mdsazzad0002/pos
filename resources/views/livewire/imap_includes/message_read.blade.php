
@php

@endphp
<div class="card card-primary card-outline">
    <div class="card-header">
      <h3 class="card-title">Read Mail</h3>

      <div class="card-tools">
        <a href="#" class="btn btn-tool" title="Previous"><i class="fas fa-chevron-left"></i></a>
        <a href="#" class="btn btn-tool" title="Next"><i class="fas fa-chevron-right"></i></a>
      </div>
    </div>
    <!-- /.card-header -->
    <div class="card-body p-0">
      <div class="mailbox-read-info">
        <h5> {{ $message->subject }}</h5>
        <h6>From: {{ $message->from }}
          <span class="mailbox-read-time float-right">{{ $message->date_message }}</span></h6>
      </div>
      <!-- /.mailbox-read-info -->
      <div class="mailbox-controls with-border text-center">
        <div class="btn-group">
          {{-- <button type="button" class="btn btn-default btn-sm" data-container="body" title="Delete">
            <i class="far fa-trash-alt"></i>
          </button> --}}
          <button type="button" class="btn btn-default btn-sm" data-container="body" title="Reply" wire:click="replay({{$message->id}})" x-on:click="compose_message = true">
            <i class="fas fa-reply"></i>
          </button>
          <button type="button" class="btn btn-default btn-sm"  wire:click="forward({{$message->id}})" x-on:click="compose_message = true" data-container="body" title="Forward">
            <i class="fas fa-share"></i>
          </button>
        </div>
        <!-- /.btn-group -->
        <button type="button" class="btn btn-default btn-sm" onclick="printElement('.mailbox-read-message')" title="Print">
          <i class="fas fa-print"></i>
        </button>
      </div>
      <!-- /.mailbox-controls -->
      <div class="mailbox-read-message">
        {!! ( json_decode($message->message)) !!}
      </div>
     </div>
      <!-- /.card-body -->
      <div class="card-footer bg-white">
        <ul class="mailbox-attachments d-flex align-items-stretch clearfix">
            @foreach(json_decode($message->image) as $key => $attachment)
            <li>



                <span class="mailbox-attachment-icon ">
                    @if($attachment->icon == 'img')
                        <img src="{{ $attachment?->url }}" alt="Attachment">
                    @else
                        <i class="{{ $attachment?->icon }}"></i>
                    @endif
                </span>

                <div class="mailbox-attachment-info">
                    <a   href="javascript:void(0);" class="mailbox-attachment-name">
                        <i class="fas fa-paperclip"></i> {{ $attachment?->name }}
                    </a>
                    <span class="mailbox-attachment-size clearfix mt-1">
                        <span>{{ $attachment?->size_megabyte }} </span>
                        <a  download="{{ $attachment?->name }}" href="{{ asset($attachment?->file_path) }}"  class="btn btn-default btn-sm float-right">
                            <i class="fas fa-cloud-download-alt"></i>
                        </a>
                    </span>
                </div>
            </li>
            @endforeach
        </ul>
      </div>
      <!-- /.card-footer -->
      <div class="card-footer">
        <div class="float-right">
          <button type="button" class="btn btn-default"  wire:click="replay({{$message->id}})" x-on:click="compose_message = true"><i class="fas fa-reply"></i> Reply</button>
          <button type="button" class="btn btn-default" wire:click="forward({{$message->id}})" x-on:click="compose_message = true"><i class="fas fa-share"></i> Forward</button>
        </div>
        {{-- <button type="button" class="btn btn-default"><i class="far fa-trash-alt"></i> Delete</button> --}}
        <button type="button" class="btn btn-default" onclick="printElement('.mailbox-read-message')"><i class="fas fa-print"></i> Print</button>
      </div>
      <!-- /.card-footer -->
    </div>
    <!-- /.card -->

