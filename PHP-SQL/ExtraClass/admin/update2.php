<?php


$p_day     = $_POST['h_day'];
$p_ab      = $_POST['h_ab'];
$p_abNo    = $_POST['h_abNo'];
$p_one     = $_POST['h_one'];
$p_two     = $_POST['h_two'];
$p_three   = $_POST['h_three'];
$p_four    = $_POST['h_four'];
$p_five    = $_POST['h_five'];
$p_six     = $_POST['h_six'];


/*
    if ($p_one == '08.30am-10.00am'){ $p_one = 'one'; }
    if ($p_two == '10.00am-11.30am'){ $p_two = 'two'; }
    if ($p_three == '11.30am-01.00pm'){ $p_three = 'three'; }
    if ($p_four == '01.00pm-02.30pm'){ $p_four = 'foure'; }
    if ($p_five == '02.30pm-04.00pm'){ $p_five = 'five'; }
    if ($p_six == '04.00pm-05.30pm'){ $p_six = 'six'; }
*/    





   
    $user = 'root';
    $pass = '';
    $db = 'extraclass';

    //create connection
   
    $conn = new mysqli('localhost', $user, $pass, $db);
    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }
    
else{
    
    global $p_day,$p_ab,$p_abNo,$p_one,$p_two,$p_three,$p_four,$p_five,$p_six;

    $query = "UPDATE $p_day SET day='$p_day', ab='$p_ab', abNo=$p_abNo , one='$p_one' , two='$p_two' ,
    three='$p_three' , four='$p_four' , five='$p_five' , six='$p_six' WHERE ab='$p_ab' AND abNo = $p_abNo";
    //echo $query ."</br>";
    $result = mysqli_query($conn,$query);
    
    if($result)
    {
        echo "<script>alert('Record Updated')</script>";
        header("location: admin.php");
    }
    else
    {
        echo "<script>alert('Sorry Record not Update')</script> ";
        echo "<font color='red'><a href='admin.php'>Click here to go back</a>";
        //header("location: admin.php");
    }
        
}
/*
$query = "UPDATE $p_day SET day='$p_day', ab='$p_ab', abNo=$abNo , one='$p_one' , two='$p_two' ,
three='$p_three' , four='$p_four' , five='$p_five' , six='$p_six' WHERE ab='$p_ab' AND anNo = $p_abNo ;";

*/
?>
