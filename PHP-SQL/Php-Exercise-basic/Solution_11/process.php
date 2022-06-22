<?php
include_once 'database.php';
if(isset($_POST['save']))
{	 
	 $name = $_POST['name'];
	 $id = $_POST['id'];
	 $age = $_POST['id'];
	 $user = $_POST['user'];
	 $password = $_POST['password'];
	 $sql = "INSERT INTO employee (name,id,age,user,password)
	 VALUES ('$name','$id','$age','$user','$password')";
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}
?>