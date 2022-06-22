<?php
include_once 'database.php';
error_reporting(0);
$idno=$_GET['id_no'];


	 $sql = "delete from employee where id = '$idno'";
	
	 if (mysqli_query($conn, $sql)) {
        echo "record delete successfully !";
        echo "<a href='index.php'>back to home</a> ";
	 } else {
		echo "Error: " . $sql . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);

?>