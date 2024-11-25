<?php
include 'inc/header.php';
Session::CheckLogin();

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['register'])) {

  // Assuming the user registration method has been updated to handle 'percentage'
  $register = $users->userRegistration($_POST);
}
if (isset($register)) {
  echo $register;
}
?>
 <div class="card ">
   <div class="card-header">
          <h3 class='text-center'>User Registration</h3>
        </div>
        <div class="card-body">

            <div style="width:600px; margin:0px auto">

            <form action="" method="post">
                <div class="form-group pt-3">
                  <label for="name">Your name</label>
                  <input type="text" name="name" class="form-control">
                </div>
                <div class="form-group">
                  <label for="username">Your username</label>
                  <input type="text" name="username" class="form-control">
                </div>
                <div class="form-group">
                  <label for="email">Email address</label>
                  <input type="email" name="email" class="form-control">
                </div>
                
                <div class="form-group">
                    <label for="mobile">Mobile Number</label>
                    <div style="display: flex;">
                        <select id="country_code" name="country_code" class="form-control" style="width: 100px;">
                            <option value="+1">+1 (USA)</option>
                            <option value="+44">+44 (UK)</option>
                            <option value="+91">+91 (India)</option>
                            <option value="+852">+852 (HK)</option>
                        </select>
                        <input type="text" name="mobile" class="form-control" maxlength="10" required>
                    </div>
                </div>

                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" name="password" class="form-control">
                </div>

                <div class="form-group">
               <label for="percentage">Rank Percentage</label>
                  <input type="number" name="percentage" class="form-control" min="0" max="100" step="1" placeholder="Enter Rank Percentage" required>
                </div>

                <div class="form-group">
                  <input type="hidden" name="roleid" value="3" class="form-control">
                </div>

                <div class="form-group">
                  <button type="submit" name="register" class="btn btn-success">Register</button>
                </div>
               </form>
          </div>
        </div>
      </div>
  <?php
  include 'inc/footer.php';
?>
