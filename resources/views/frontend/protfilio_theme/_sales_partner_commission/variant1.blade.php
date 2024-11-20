<form action="">
    @csrf

   <div>
    <label for="username">Username</label>
    <input type="text" name="username" id="username">
   </div>

   <div>
    <label for="email">Email</label>
    <input type="email" name="email" id="email">
   </div>

   <div>
    <label for="nid">NID no</label>
    <input type="number" name="nid" id="nid">
   </div>

   <div>
    <label for="password">Password</label>
    <input type="password" name="password" id="password">
   </div>

   <div>
    <label for="confirm_password">Password Confirm</label>
    <input type="password" name="password_confimation" id="confirm_password">
   </div>

   <button type="submit">Submit</button>

</form>
