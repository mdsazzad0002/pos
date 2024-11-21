<form action="{{ route('admin.offerbanner.update', $offerbanner->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

        <div class="">
            <label for="">Contact Information <span class="text-danger">Name - Phone - Organization</span> </label>
            <div class="input-group mb-3">
                <select required type="text" name="offerbannerContact" data-model="true" data-url="{{ route('admin.offerbannerContact.select') }}" data-ajax="true" class="form-control input-group-prepend select2" placeholder="offerbannerContact" aria-label="offerbannerContact" aria-describedby="basic-addon1">
                    <option value="{{ $offerbanner->contact->id }}">{{ $offerbanner->contact->name ?? '' }} - {{ $offerbanner->contact->phone ?? '' }} -  {{ $offerbanner->contact->account->name ?? '' }}</option>
                </select>
                <a target="_blank" type="button" class="btn btn-primary input-group-append" href="{{ route('admin.offerbannerContact.index') }}">+</a>
            </div>
        </div>
        <div class="">
            <label for="">offerbanner Source</label>
            <div class="input-group mb-3">
                <select required type="text" name="offerbannerSource"  data-model="true" data-url="{{ route('admin.offerbannerSource.select') }}" data-ajax="true" class="form-control input-group-prepend select2" placeholder="offerbannerSource" aria-label="offerbannerSource" aria-describedby="basic-addon1">
                    <option value="{{ $offerbanner->offerbannerSource->id }}">{{ $offerbanner->offerbannerSource->name }}</option>
                </select>
                <a target="_blank" type="button" class="btn btn-primary input-group-append" href="{{ route('admin.offerbannerSource.index') }}">+</a>
            </div>
        </div>


        <div class="form-group mb-2">
            <label class="form-label" for="name">Date</label>
            <input type="date" name="date" class="form-control mb-2" value="{{ $offerbanner->date }}" id="date" placeholder="offerbannerSource date">
        </div>




        <div class="d-flex justify-content-end">
            <button class="btn btn-warning" type="submit">Save</button>
        </div>

    </form>

