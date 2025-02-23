<div class="card card-primary card-outline"  x-show="compose_message">
    <div class="card-header d-flex justify-content-between">
      <h3 class="card-title">Compose New Message</h3>
      <div class="btn btn-default" x-on:click="compose_message = false">x</div>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
      <div class="form-group">
        <input class="form-control" placeholder="To:" wire:model="sender">
        @error('sender')
            <span class="text-danger">{{ $message }}</span>
        @enderror
      </div>

      <div class="form-group">
        <input class="form-control" placeholder="Subject:" wire:model="subject">
        @error('subject')
            <span class="text-danger">{{ $message }}</span>
        @enderror
      </div>

      <div class="form-group">
          <textarea id="compose-textarea" class="form-control" wire:model="body" style="height: 300px">
            <h1><u>Heading Of Message</u></h1>

            <p>Thank you,</p>
            <p>John Doe</p>
          </textarea>
          @error('body')
              <span class="text-danger">{{ $message }}</span>
          @enderror
      </div>
      <div class="form-group">
        <div class="btn btn-default btn-file">
          <i class="fas fa-paperclip"></i> Attachment
          <input type="file" name="attachment">
        </div>
        <p class="help-block">Max. 32MB</p>
      </div>
    </div>
    <!-- /.card-body -->
    <div class="card-footer">
      <div class="float-right d-flex gap-3">
        <button type="button" class="btn btn-default"><i class="fas fa-pencil-alt"></i> Draft</button>



         <button class="btn btn-primary" type="button" x-show="loading" wire:loading wire:target="sendMessage">
            <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
            Sending...
        </button>

        <div x-data="{ showMessage: false, message: '' }"
            x-init="
            @this.on('message-sent', msg => {
                showMessage = true;
                message = msg;
                setTimeout(() => showMessage = false, 500);
            })
            ">
            @if(session('message'))
                <button class="btn btn-primary" type="button" x-show="showMessage" x-text="message"></button>
            @endif
        </div>

        <!-- Send Button (Hidden while Loading) -->
        <button type="submit" wire:click="sendMessage" x-show="!loading" wire:loading.remove wire:target="sendMessage" class="btn btn-primary">
            <i class="far fa-envelope"></i> Send
        </button>


      </div>

      <button type="reset" x-on:click="compose_message = false" wire:click="resetsender()" class="btn btn-default"><i class="fas fa-times"></i> Discard</button>
    </div>
    <!-- /.card-footer -->
  </div>
