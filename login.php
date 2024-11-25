<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link rel="stylesheet" href="path/to/your/styles.css"> <!-- Update with your CSS file path -->
</head>
<body>
<?php
include 'inc/header.php';
Session::CheckLogin();

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) {
    // hCaptcha validation
    $hcaptchaResponse = $_POST['h-captcha-response'] ?? '';
    $secretKey = 'ES_a22c45f6cbff4b588432f4fc88d282dd'; // Replace with your actual hCaptcha secret key
    $response = file_get_contents("https://hcaptcha.com/siteverify?secret=$secretKey&response=$hcaptchaResponse");
    $responseData = json_decode($response, true);

    if ($responseData['success']) {
        // Proceed with login if hCaptcha passes
        $userLog = $users->userLoginAuthotication($_POST);
    } else {
        // Show error if hCaptcha fails
        $userLog = "<div class='alert alert-danger'>Captcha verification failed. Please try again.</div>";
    }
}

// Display messages
if (isset($userLog)) {
    echo $userLog;
}

$logout = Session::get('logout');
if (isset($logout)) {
    echo $logout;
}
?>
<div class="card">
    <div class="card-header">
        <h3 class='text-center'><i class="fas fa-sign-in-alt mr-2"></i>User Login</h3>
    </div>
    <div class="card-body">
        <div style="width:450px; margin:0px auto">
            <form action="" method="post">
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" name="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" required>
                </div>
                <!-- hCaptcha Integration -->
                <div class="form-group">
                    <div class="h-captcha" data-sitekey="79226898-7f0c-437c-aef0-12f43026231a"></div> <!-- Replace with your actual hCaptcha site key -->
                    <script src="https://js.hcaptcha.com/1/api.js" async defer></script>
                </div>
                <div class="form-group">
                    <button type="submit" name="login" class="btn btn-success">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php
include 'inc/footer.php';
?>
</body>
</html>
