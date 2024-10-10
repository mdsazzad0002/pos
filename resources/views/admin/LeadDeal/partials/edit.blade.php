<form action="{{ route('admin.LeadDeal.update', $LeadDeal->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="form-group mb-2">
        <label class="form-label" for="note">Note</label>
        <input type="text" name="note" value="{{$LeadDeal->note ?? ''}}" class="form-control mb-2" id="note" placeholder="LeadDeal note">
    </div>
    
    <div class="form-group mb-2">
        <label class="form-label" for="amount">Amount</label>
        <input type="text" name="amount" value="{{$LeadDeal->amount ?? ''}}" class="form-control mb-2" id="amount" placeholder="LeadDeal amount">
    </div>
    <div class="form-group mb-2">
        <label class="form-label" for="date">Date</label>
        <input type="date" name="date" value="{{$LeadDeal->date ?? ''}}" class="form-control mb-2" id="date" placeholder="LeadDeal date">
    </div>
    
    <div class="form-group mb-2">
        <label for="lead">Lead Name <span class="text-danger">Name - Organization</span></label>
        <div class="input-group mb-3">
            <select type="text" id="" data-url="{{ route('admin.Lead.select') }}" data-ajax="true"  data-model="true" name="lead" class="form-control input-group-prepend select2" placeholder="Lead Name" id="lead" aria-label="Username" aria-describedby="basic-addon1">
                 <option value="{{$LeadDeal->lead->id ?? ''}}">{{$LeadDeal->lead->contact->name ?? ''}} -{{$LeadDeal->lead->contact->account->name ?? ''}}</option>
            </select>
    
            <a type="button" class="btn btn-primary input-group-append" target="_blank" href="{{ route('admin.Lead.index') }}">+</a>
        </div>
    </div>
    
    <div class="form-group mb-2">
        <label for="LeadDealStage">Stage</label>
        <div class="input-group mb-3">
            <select type="text" id="" data-url="{{ route('admin.LeadDealStage.select') }}" data-ajax="true"  data-model="true" name="LeadDealStage" class="form-control input-group-prepend select2" placeholder="Lead Stage" id="LeadDealStage" aria-label="Username" aria-describedby="basic-addon1">
                 <option value="{{$LeadDeal->stage->id ?? ''}}">{{$LeadDeal->stage->name ?? ''}}</option>
            </select>
    
            <a type="button" class="btn btn-primary input-group-append" target="_blank" href="{{ route('admin.Lead.index') }}">+</a>
        </div>
    </div>
    
        <div class="d-flex justify-content-end">
            <button class="btn btn-warning" type="submit">Save</button>
        </div>
    
    </form>
    
    