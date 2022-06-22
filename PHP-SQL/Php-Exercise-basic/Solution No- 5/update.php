
<?php
include_once 'database.php';

$idno=$_GET['id_no'];
echo "$idno";
?>

<html>
	<head>
	<style>
table, th, td {
    border: 1px solid black;
}
</style>
	</head>
  <body>
	<form method="GET" action="" >
		 Name:<br>
		<input type="text" name="name">
        <br>
        Id:<br>
		<input type="text" name="id" value="<?php echo "$idno" ?>">
		<br>		
		Age:<br>
		<input type="text" name="age">
		<br>
		User Name:<br>
		<input type="text" name="user">
		<br>
		password:<br>
		<input type="text" name="password">
		<br>
		<br>
        <input type="submit" name="save" value="submit">        
    </form>





    <?php



$name = $_GET['name'];
$id=$_GET['id'];
$age = $_GET['age'];
$user = $_GET['user'];
$password = $_GET['password'];


$sql = "update employee set name='$name' , age='$age', user='$user', password='$password' where id ='$id'";
if (mysqli_query($conn, $sql)) {
   echo "update successfully !";
   echo "<a href='index.php'>back to home</a> ";
} else {
   echo "Error: " . $sql . "
" . mysqli_error($conn);
}
mysqli_close($conn);


?>


</body>
</html>