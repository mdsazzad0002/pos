<form action="{{ route('admin.Lead.update', $Lead->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')    
    
        <div class="">
            <label for="">Contact Information <span class="text-danger">Name - Phone - Organization</span> </label>
            <div class="input-group mb-3">
                <select required type="text" name="LeadContact" data-model="true" data-url="{{ route('admin.LeadContact.select') }}" data-ajax="true" class="form-control input-group-prepend select2" placeholder="LeadContact" aria-label="LeadContact" aria-describedby="basic-addon1">
                    <option value="{{ $Lead->contact->id }}">{{ $Lead->contact->name ?? '' }} - {{ $Lead->contact->phone ?? '' }} -  {{ $Lead->contact->account->name ?? '' }}</option>
                </select>
                <a target="_blank" type="button" class="btn btn-primary input-group-append" href="{{ route('admin.LeadContact.index') }}">+</a>
            </div>
        </div>
        <div class="">
            <label for="">Lead Source</label>
            <div class="input-group mb-3">
                <select required type="text" name="LeadSource"  data-model="true" data-url="{{ route('admin.LeadSource.select') }}" data-ajax="true" class="form-control input-group-prepend select2" placeholder="LeadSource" aria-label="LeadSource" aria-describedby="basic-addon1">
                    <option value="{{ $Lead->LeadSource->id }}">{{ $Lead->LeadSource->name }}</option>
                </select>
                <a target="_blank" type="button" class="btn btn-primary input-group-append" href="{{ route('admin.LeadSource.index') }}">+</a>
            </div>
        </div>
        
    
        <div class="form-group mb-2">
            <label class="form-label" for="name">Date</label>
            <input type="date" name="date" class="form-control mb-2" value="{{ $Lead->date }}" id="date" placeholder="LeadSource date">
        </div>
    
    
            
    
        <div class="d-flex justify-content-end">
            <button class="btn btn-warning" type="submit">Save</button>
        </div>
    
    </form>
    
    