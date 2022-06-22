<?php
$p_serial      = $_GET['h_serial'];
$p_update_day  = $_GET['h_update_day'];
$p_update_ab   = $_GET['h_update_ab'];
$p_update_abNo = $_GET['h_update_abNo'];
/*
echo $p_serial   ."</br>";
echo $p_update_day   ."</br>";
echo $p_update_ab    ."</br>";
echo $p_update_abNo  ."</br>";
*/


$user = 'root';
$pass = '';
$db   = 'extraclass';

//create connection

$conn = new mysqli('localhost', $user, $pass, $db);
if($conn->connect_error){
    die('Connection Failed : '.$conn->connect_error);
}

else{

global $p_update_serial,$p_update_day,$p_update_ab,$p_update_abNo;

$query = "DELETE FROM $p_update_day WHERE ab='$p_update_ab' AND abNo = $p_update_abNo AND serial=$p_serial";
//echo $query ."</br>";
$result = mysqli_query($conn,$query);

if($result)
{
    echo "<script>alert('Record Deleted')</script>";
    header("location: admin.php");
}
else
{
    echo "<script>alert('Sorry Record not deleted')</script> ";
    echo "<font color='red'><a href='admin.php'>Click here to go back</a>";
    //header("location: admin.php");
}
    
}


?>