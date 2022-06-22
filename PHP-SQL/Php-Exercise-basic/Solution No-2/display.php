<?php
session_start();
if (isset($_SESSION["email"]))
 {
	echo"Welcome" .$_SESSION["email"];
}
else
{
	header("location:login.php");
}
?>
<br>
<a href="logout.php">Logout</a>