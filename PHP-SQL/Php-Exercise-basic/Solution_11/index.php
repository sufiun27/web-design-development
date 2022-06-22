<!DOCTYPE html>
<html>
	<head>
	<style>
table, th, td {
    border: 1px solid black;
}
</style>
	</head>
  <body style="background-color:powderblue;">

	<form method="post" action="process.php">
		<center> <img src="./download.png" style="width:100px;height:100px;" ></img> <h1> Student Registeration Form</h1> </center>
		 Name:<br>
		<input type="text" name="name" >
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
		<div>
<label> 
Gender :
</label><br>
<input type="radio" value="Male" name="gender" checked > Male 
<input type="radio" value="Female" name="gender"> Female 
<input type="radio" value="Other" name="gender"> Other

</div>
		<br>
        <input type="submit" name="save" value="submit">
        <a href="./view.php"></a>
    </form>
    
	
   

  </body>
</html>