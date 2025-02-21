
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
        <h5> {{ $message->getSubject() }}</h5>
        <h6>From: {{ $message->getFrom() }}
          <span class="mailbox-read-time float-right">{{ $message->getDate() }}</span></h6>
      </div>
      <!-- /.mailbox-read-info -->
      <div class="mailbox-controls with-border text-center">
        <div class="btn-group">
          <button type="button" class="btn btn-default btn-sm" data-container="body" title="Delete">
            <i class="far fa-trash-alt"></i>
          </button>
          <button type="button" class="btn btn-default btn-sm" data-container="body" title="Reply">
            <i class="fas fa-reply"></i>
          </button>
          <button type="button" class="btn btn-default btn-sm" data-container="body" title="Forward">
            <i class="fas fa-share"></i>
          </button>
        </div>
        <!-- /.btn-group -->
        <button type="button" class="btn btn-default btn-sm" title="Print">
          <i class="fas fa-print"></i>
        </button>
      </div>
      <!-- /.mailbox-controls -->
      <div class="mailbox-read-message">
        {!! ( $message->getHtmlBody()) !!}
      </div>  </div>
      <!-- /.card-body -->
      <div class="card-footer bg-white">
        <ul class="mailbox-attachments d-flex align-items-stretch clearfix">
            @foreach($message->getAttachments() as $attachment)
            <li>
                @php
                //dd($attachment); 
                    $fileExtension = pathinfo($attachment->name, PATHINFO_EXTENSION);
                    $icon = '';
                    switch(strtolower($fileExtension)) {
                        case 'pdf':
                            $icon = 'far fa-file-pdf';
                            break;
                        case 'docx':
                        case 'doc':
                            $icon = 'far fa-file-word';
                            break;
                        case 'jpg':
                        case 'jpeg':
                        case 'png':
                        case 'gif':
                            $icon = 'fas fa-camera';
                            break;
                        default:
                            $icon = 'fas fa-paperclip';
                    }
                @endphp
    
                <span class="mailbox-attachment-icon @if(in_array($fileExtension, ['jpg', 'jpeg', 'png', 'gif'])) has-img @endif">
                    @if(in_array($fileExtension, ['jpg', 'jpeg', 'png', 'gif']))
                        <img src="data:image/{{ $fileExtension }};base64,{{ base64_encode($attachment->content) }}" alt="Attachment">
                    @else
                        <i class="{{ $icon }}"></i>
                    @endif
                </span>
    
                <div class="mailbox-attachment-info">
                    <a href="javascript:void(0);" wire:click.prevent="downloadAttachment({{ $attachment->getId() }})" class="mailbox-attachment-name">
                        <i class="fas fa-paperclip"></i> {{ $attachment->name }}
                    </a>
                    <span class="mailbox-attachment-size clearfix mt-1">
                        <span>{{ number_format($attachment->getSize() / 1024, 2) }} KB</span>
                        <a href="" class="btn btn-default btn-sm float-right">
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
          <button type="button" class="btn btn-default"><i class="fas fa-reply"></i> Reply</button>
          <button type="button" class="btn btn-default"><i class="fas fa-share"></i> Forward</button>
        </div>
        <button type="button" class="btn btn-default"><i class="far fa-trash-alt"></i> Delete</button>
        <button type="button" class="btn btn-default"><i class="fas fa-print"></i> Print</button>
      </div>
      <!-- /.card-footer -->
    </div>
    <!-- /.card -->