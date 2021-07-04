<?php
include('db.php');
ob_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>signup</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	
	<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form class="login100-form validate-form" action="signupp.php" method="POST">
				<span class="login100-form-title p-b-37">
					Sign up
				</span>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter username">
					<input class="input100" type="text" name="Name" placeholder="username">
					<span class="focus-input100"></span>
				</div>
                 <div class="wrap-input100 validate-input m-b-20" data-validate = "Enter Email">
					<input class="input100" type="Email" name="Email" placeholder="Email">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
					<input class="input100" type="password" name="Password" placeholder="password">
					<span class="focus-input100"></span>
				</div>
               

				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit" name="save" value="submit">
						Sign In
					</button>
				</div>

				<div class="text-center p-t-57 p-b-20">
					<span class="txt1">
						Or login with
					</span>
				</div>

				<div class="flex-c p-b-112">
					<a href="https://www.facebook.com/campaign/landing.php?campaign_id=1653377901&extra_1=s%7Cc%7C358050429071%7Ce%7Cfacebook%20login%7C&placement=&creative=358050429071&keyword=facebook%20login&partner_id=googlesem&extra_2=campaignid%3D1653377901%26adgroupid%3D65139787642%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-1409285535%26loc_physical_ms%3D9077146%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=Cj0KCQjw6-SDBhCMARIsAGbI7UjcTxDmqfV06YwcXkwGmVZyjk89yNgPnZIbuKP31rFNCJyZ3swWgd0aAq0FEALw_wcB" class="login100-social-item">
						<i class="fa fa-facebook-f"></i>
					</a>

					<a href="https://myaccount.google.com/?utm_source=sign_in_no_continue" class="login100-social-item">
						<img src="images/icons/icon-google.png" alt="GOOGLE">
					</a>
				</div>

				<div class="text-center">Already have an account?
					<a href="loginn.php" class="txt2 hov1">
						Login Now
					</a>
				</div>
			</form>

			
		</div>
	</div>
	
	

	<?php
include ('db.php');
if(isset($_POST['save']))
{
$Name = $_POST['Name'];
$Email = $_POST['Email'];
$Password= $_POST['Password'];
$sql = "INSERT INTO user (Name,Email,Password)Values('$Name','$Email','$Password')";
if (mysqli_query($con,$sql)){
	if($sql)
	{
		echo "successfully signup";
		header('Location:loginn.php');
	}
	else
	{
		header('Location:signupp.php');
		echo "invalid username or password please reenter";
	}
	echo "New record created successfully !";
	 } else {
		echo "error record not inserted " . $sql . "
" . mysqli_error($con);
	 }
	 mysqli_close($con);

	}
ob_end_flush();
?>
<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>