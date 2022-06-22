<!DOCTYPE html>
<html>
	<head>
	<style>
table, th, td {
    border: 1px solid black;
}
</style>
	</head>
  <body>
	<form method="post" action="process.php">
		 Name:<br>
		<input type="text" name="name">
		<br>
		id:<br>
		<input type="text" name="id">
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
        <a href="./view.php"></a>
    </form>
    
	
	
	<?php

$link = mysqli_connect("localhost", "root", "", "cyber");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt select query execution
$sql = "SELECT * FROM employee";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
			echo "<tr>";
			echo "<th>name</th>";
                echo "<th>id</th>";
                echo "<th>age</th>";
				echo "<th>user name</th>";
				echo "<th>password</th>";
				echo "<th>update</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['name'] . "</td>";
                echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['age'] . "</td>";
				echo "<td>" . $row['user'] . "</td>";
				echo "<td>" . $row['password'] . "</td>";
				echo "<td><a href='update.php?id_no=$row[id]'>update</a></td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
   

  </body>
</html>