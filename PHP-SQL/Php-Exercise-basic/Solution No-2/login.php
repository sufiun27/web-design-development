<?php
session_start();
$u="ABC";
$p="123";
if (isset($_POST["btnSubmit"]))
 {
	if ($u==$_POST ["txtEmail"] and $p==$_POST["txtPass"] )
	{
		$_SESSION["email"]=$_POST["txtEmail"];
		header("location:display.php");
	}
	else
	{
		echo "Invalid username or password";
	}
}
?>
<html>
<head>
	<style>
body {
  background-color: lightblue;
}
</style>
</head>
<body>
	<form method="post">
		Enter Email<br>
		<input type="text" name="txtEmail"><br>
		Enter Password<br>
		<input type="password" name="txtPass"><br>
		<br><br>
		<input type="submit" name="btnSubmit" value="Login"/>
	</form>

</body>
</html>
