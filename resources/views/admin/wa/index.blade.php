<div>

    Welcome to Whatsapp 
    <form action="{{ route('admin.wa.sendMessage') }}" method="post">
        @csrf
        <input type="text" name="message" value="test message" class="form-control" placeholder="Enter message">
        <input type="text" name="phone" value="8801590084779" class="form-control" id="" placeholder="Enter phone">
        <button class="btn btn-primary">Send</button>
    </form>


    <br>
    <br>
    <a href="https://developers.facebook.com/tools/explorer/">Token Generate long live</a>
    <a href="{{ route('admin.wa.tokenGenerate') }}">Token Generate</a>
</div>