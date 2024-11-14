<form action="{{ route('admin.page.update', $page->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('put')

    <div class="form-group mb-2">
        <label for="name">Name</label>
        <input type="text" name="name" class="form-control mb-2" value="{{ $page->name }}" id="name" placeholder="Enter page">
    </div>

    <div class="form-group mb-2">
        <label for="slug">slug</label>
        <input type="text" name="slug"  value="{{ $page->slug }}" class="form-control mb-2" value="" id="slug" placeholder="Enter slug">
    </div>

    <label for="status"> Page Status <br/>
        <input type="checkbox" checked class="" hidden  name="status"   value="0">
        <input type="checkbox" class="toggle"  {{ $page->status == 1 ? 'checked' : '' }} checked  placeholder="page Status" name="status" id="status" value="1">
    </label>

    <label for="page_type"> Page Type <br/>
        <select name="page_type" id="page_type" class="form-control">
             <option value="">Default</option>
             <option @if($page->page_type =='filter') selected @endif value="filter">Filter</option>
             <option @if($page->page_type =='view') selected @endif value="view">View</option>
             <option @if($page->page_type =='tracking') selected @endif value="tracking">tracking</option>
             <option @if($page->page_type =='contact') selected @endif value="contact">contact</option>
             <option @if($page->page_type =='about') selected @endif value="about">about</option>
             <option @if($page->page_type =='register') selected @endif value="register">register</option>
             <option @if($page->page_type =='checkout') selected @endif value="checkout">checkout</option>
             <option @if($page->page_type =='cart') selected @endif value="cart">cart</option>
             <option @if($page->page_type =='wishlist') selected @endif value="wishlist">wishlist</option>
             <option @if($page->page_type =='service') selected @endif value="service">service</option>
             <option @if($page->page_type =='service_details') selected @endif value="service_details">service_details</option>

        </select>
     </label>

    <label for="homepage"> Make As Home Page Status <br/>
        <input type="checkbox" checked class="" hidden  name="homepage"   value="0">
        <input type="checkbox" class="toggle"   {{ $page->homepage == 1 ? 'checked' : '' }} placeholder="page homepage" name="homepage" id="homepage" value="1">
    </label>






    <div class="d-flex justify-content-end">
        <button class="btn btn-warning" type="submit">Save</button>
    </div>

</form>
