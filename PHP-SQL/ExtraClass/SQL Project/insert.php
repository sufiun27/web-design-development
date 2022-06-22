<?php

$Day = $_POST['Day'];
$RoomNo = $_POST['RoomNo'];
$One = $_POST['One'];

$Two = $_POST['Two'];
$Three = $_POST['Three'];
$Four = $_POST['Four'];
$Five = $_POST['Five'];


//$One = (empty($One)) ? NULL : $_POST['One']; ;






   
    $user = 'root';
    $pass = '';
    $db = 'projecttwo';

    //create connection
   
    $conn = new mysqli('localhost', $user, $pass, $db);
    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }
    
       else{
                
        $stmt = $conn->prepare("INSERT INTO test (day,roomno,Time_9am_10am,Time_10am_11am,Time_11am_12pm,Time_12pm_1pm,Time_1pm_2pm) VALUES(?,?,?,?,?,?,?)");


        $stmt->bind_param("sssssss",$Day,$RoomNo,$One,$Two,$Three,$Four,$Five);
        
        $stmt->execute();
        

         echo "Great work";
         header("location: index.php");

         $stmt->close();
         $conn->close();

        
}



?>
