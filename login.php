<?php
session_start();
if(isset($_SESSION['login'])) {
	header("location:home.php");
}else{	
?>

<!DOCTYPE html>
<html>
<head>
	<title>Form Login | Dika</title>
<link rel="stylesheet" type="text/css" href="css/login2.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:400,700" rel="stylesheet">
<link rel="shortcut icon" href="images/logo.jpg	">
<script type="text/javascript" src="jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="validasi.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $("#form").validate(); //id form
});
</script>
</head>
<body>
	<div id="container" class="wrapper">
		<h2>User Login</h2> 
		<div id="input">
		<form action="proses/proses_login.php" method="post" id="form">	
			
			<input type="email" name="email" id="email" class="required email" placeholder="email"><br>
			<br>
			<input type="password" name="password" class="required" id="password" placeholder="password"><br>
			<button type="submit" id="submit" name="submit" value="submit">LOGIN</button>
		</div>
		</form>
		<img src="images/icon.png" alt="icon desktop">

		<p>Forgot Username / Password</p>
		
		<h3> Create Your Account </h3>	

	</div><!-- container -->




</body>
</html>

<?php 
}
?>
