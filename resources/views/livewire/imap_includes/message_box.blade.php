

<div class="card card-primary card-outline">



    <div class="card-header">
        <h3 class="card-title">{{ $box }}</h3>

        <div class="card-tools">
            <div class="input-group input-group-sm">
                <input type="text" class="form-control" wire:model.live.debounce.700ms="q" placeholder="Search Mail">
                <div class="input-group-append">
                    <div class="btn btn-primary">
                        <i class="fas fa-search"></i>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.card-tools -->
    </div>
    <!-- /.card-header -->
    <div class="card-body p-0">
        <div class="mailbox-controls">
            <!-- Check all button -->
            <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i
                    class="far fa-square"></i>
            </button>
            <div class="btn-group">
                {{-- <button type="button" class="btn btn-default btn-sm">
                    <i class="far fa-trash-alt"></i>
                </button> --}}
                <button type="button" class="btn btn-default btn-sm"  wire:click="mail_box_refresh('{{$box}}')" wire.loading.attr="disabled" wire:target="changeBox">
                    <i class="fas fa-sync-alt" wire:loading.class="fa-spin" wire:target="changeBox"></i>
                </button>
            </div>
            <!-- /.btn-group -->
            <div class="float-right">
                {{$showing_form}}-{{$showing_to}}/{{$total_items}}  &nbsp; <select wire:model.live="show" id="">
                    <option value="5">5</option>
                    <option selected value="10">10</option>
                    <option value="20">20</option>
                    <option value="30">30</option>
                </select>

                <div class="btn-group">
                    <button type="button" class="btn btn-default btn-sm" wire:click="showPage('-')">
                        <i class="fas fa-chevron-left"></i>
                    </button>
                    <button type="button" class="btn btn-default btn-sm" wire:click="showPage('+')">
                        <i class="fas fa-chevron-right"></i>
                    </button>
                </div>
                <!-- /.btn-group -->
            </div>
            <!-- /.float-right -->
        </div>
        <div class="table-responsive mailbox-messages">
            <table class="table table-hover table-striped">
                <tbody>
                    @if ($messages)

                    @foreach ($messages as $message)


                    <tr wire:key="{{ $message->id }}">
                        <td>
                            <div class="icheck-primary">
                                <input type="checkbox" id="check{{$message->id }}">
                                <label for="check{{ $message->id }}"></label>
                            </div>
                        </td>
                        <td class="mailbox-star">
                            <a href="#"><i class="fas fa-star text-warning"></i></a>
                        </td>
                        <td class="mailbox-name">
                            <a wire:click="readMail({{ $message->id }})" href="javascript:void(0);">
                                <b>{{ Str::title($message->subject) }}</b>
                                <br/>
                                @if($box == 'Sent')
                                    {{ $message->to ?? 'Unknown' }}
                                @else
                                {{ $message->from ?? 'Unknown' }}
                                @endif
                            </a>
                        </td>

                        <td class="mailbox-attachment">
                            @if($message->image != "[]")
                                📎
                            @endif
                        </td>
                        <td class="mailbox-date">
                            {{ $message->created_at }}
                        </td>
                    </tr>
                    @endforeach
                    @endif

                </tbody>
            </table>
            <!-- /.table -->
        </div>
        <!-- /.mail-box-messages -->
    </div>
    <!-- /.card-body -->
    <div class="card-footer p-0">
        <div class="mailbox-controls">
            <!-- Check all button -->
            <button type="button" class="btn btn-default btn-sm checkbox-toggle">
                <i class="far fa-square"></i>
            </button>
            <div class="btn-group">
                {{-- <button type="button" class="btn btn-default btn-sm">
                    <i class="far fa-trash-alt"></i>
                </button> --}}
                {{-- <button type="button" class="btn btn-default btn-sm">
                    <i class="fas fa-reply"></i>
                </button>
                <button type="button" class="btn btn-default btn-sm">
                    <i class="fas fa-share"></i>
                </button> --}}
            </div>
            <!-- /.btn-group -->
            <button type="button" class="btn btn-default btn-sm"  wire:click="mail_box_refresh('{{$box}}')" wire.loading.attr="disabled" wire:target="changeBox">
                <i class="fas fa-sync-alt" wire:loading.class="fa-spin" wire:target="changeBox"></i>

            </button>
            <div class="float-right">
                {{$showing_form}}-{{$showing_to}}/{{$total_items}}
                <div class="btn-group">
                    <button type="button" class="btn btn-default btn-sm" wire:click="showPage('-')">
                        <i class="fas fa-chevron-left"></i>
                    </button>
                    <button type="button" class="btn btn-default btn-sm" wire:click="showPage('+')">
                        <i class="fas fa-chevron-right"></i>
                    </button>
                </div>
                <!-- /.btn-group -->
            </div>
            <!-- /.float-right -->
        </div>
    </div>
</div>
