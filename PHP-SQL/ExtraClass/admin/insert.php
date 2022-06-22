<?php
$x=0;

$p_day = $_POST['h_day'];
$p_ab = $_POST['h_ab'];
$p_abNo = $_POST['h_abNo'];
$p_one = $_POST['h_one'];
$p_two = $_POST['h_two'];
$p_three = $_POST['h_three'];
$p_four = $_POST['h_four'];
$p_five = $_POST['h_five'];
$p_six = $_POST['h_six'];
$p_ab_abNo= $p_ab.'-'.$p_abNo;

/*
    if ($p_one == '08.30am-10.00am'){ $p_one = 'one'; }
    if ($p_two == '10.00am-11.30am'){ $p_two = 'two'; }
    if ($p_three == '11.30am-01.00pm'){ $p_three = 'three'; }
    if ($p_four == '01.00pm-02.30pm'){ $p_four = 'foure'; }
    if ($p_five == '02.30pm-04.00pm'){ $p_five = 'five'; }
    if ($p_six == '04.00pm-05.30pm'){ $p_six = 'six'; }
*/    

if($p_day!=='' and $p_ab!=='' and $p_abNo!=='')
{


   
    $user = 'root';
    $pass = '';
    $db = 'extraclass';

    //create connection
   
    $conn = new mysqli('localhost', $user, $pass, $db);
    
    $query1 = "SELECT ab_abNo FROM $p_day;";
    $result = mysqli_query($conn,$query1);
    while ($rows = mysqli_fetch_assoc($result)){
        if($p_ab_abNo === $rows['ab_abNo']){
           // echo "iam run1(".$p_ab_abNo.")";
           // echo "iam run2(".$rows['ab_abNo'].")";
            $x=1;
           break;
            
        }
        
    }

    


    if($conn->connect_error){
        die('Connection Failed : '.$conn->connect_error);
    }
    
       else{

               if($x==0){
                $stmt = $conn->prepare("INSERT INTO $p_day (day,ab_abNo,ab,abNo,one,two,three,four,five,six) VALUES(?,?,?,?,?,?,?,?,?,?)");


                $stmt->bind_param("sssissssss",$p_day,$p_ab_abNo,$p_ab,$p_abNo,$p_one,$p_two,$p_three,$p_four,$p_five,$p_six);
                
                $stmt->execute();
                
        
                if($stmt)
            {
                echo "<script>alert('Record Updated')</script>";
               // echo "<font color='red'><a href='admin.php'>Click here to go back (if) ( Record Insert )</a>";
                //header("location: admin.php");
                ?>
             <META HTTP-EQUIV="Refresh" CONTENT="0; URL= http://localhost/ExtraClass/admin/admin.php ">
               <?php
            }
            else
            {
                echo "<script>alert('Sorry Record not Update')</script> ";
                echo "<font color='red'><a href='admin.php'>Click here to go back</a>";
                //header("location: admin.php");
            }
                
        /////////////////////////////////////////////
        
        /////////////////////////////////////////
        
        
                 $stmt->close();
                 $conn->close();
        
                /*
                 echo "<script>alert('Insert new Record')</script>";
                 //header("location: admin.php");
                 echo "<font color='red'><a href='admin.php'>Click here to go back</a>";
                */
        
               }
               
               else if($x == 1){
                echo "<script>alert('can not insert same data in AB and ABno')</script>";
                //echo "<font color='red'><a href='admin.php'>Click here to go back</a>";
                ?>
             <META HTTP-EQUIV="Refresh" CONTENT="0; URL= http://localhost/ExtraClass/admin/admin.php ">
               <?php
               }
        
}
}
else
{
    echo "<script>alert('Please full up.. Select Day , AB and ABno')</script>";
    //echo "<font color='red'><a href='admin.php'>Click here to go back</a>";
    ?>
 <!--<META HTTP-EQUIV="Refresh" CONTENT="0; URL= http://localhost/ExtraClass/admin/admin.php "> --> 
   <?php
    
}


?>
