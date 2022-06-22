<?php
error_reporting(0);
$query;
$p_show_ab = htmlspecialchars($_REQUEST['h_show_ab']);
$p_show_abNo = htmlspecialchars($_REQUEST['h_show_abNo']);
$p_show_day = htmlspecialchars($_REQUEST['h_show_day']);
/*
echo $p_show_day."  ".
 $p_show_ab."-".
 $p_show_abNo;
 */
/*
 if($p_show_day == ''){
  echo "<script>alert('Day is requared . For see the record')</script>";
 }
*/
if (($p_show_day == 'Saturday' or 'Sunday' or 'Monday' or 'Tuesday' or 'Wednesday' or 'Thursday' or 'Friday') and ($p_show_ab == '') and ($p_show_abNo == '') )
{       global $query,$p_show_day;
        $query = "SELECT * FROM $p_show_day ORDER BY ab, abNo;";
        
}
else if (($p_show_day == 'Saturday' or 'Sunday' or 'Monday' or 'Tuesday' or 'Wednesday' or 'Thursday' or 'Friday') and ($p_show_ab == 'AB_01' or 'AB_02' or 'AB_03' or 'AB_04') and ($p_show_abNo == '') )
{       global $query,$p_show_day,$p_show_ab;
        $query = "SELECT * FROM $p_show_day WHERE ab = '$p_show_ab' ORDER BY ab, abNo;";
        
}
/*
else if (($p_show_day == '') and ($p_show_ab == 'AB_01' or 'AB_02' or 'AB_03' or 'AB_04') and ($p_show_abNo == '') )
{       global $query,$p_show_day,$p_show_ab;
        $query = "SELECT * FROM Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday WHERE ab = '$p_show_ab';";
        
}
*/

else if (($p_show_day == 'Saturday' or 'Sunday' or 'Monday' or 'Tuesday' or 'Wednesday' or 'Thursday' or 'Friday') and ($p_show_ab == 'AB_01' or 'AB_02' or 'AB_03' or 'AB_04') and ($p_show_abNo !== '') )
{
        global $query,$p_show_day,$p_show_ab,$p_show_abNo;
        $query = "SELECT * FROM $p_show_day WHERE ab = '$p_show_ab' AND abNo = $p_show_abNo ORDER BY ab, abNo;";
        
}
/*
<option>Saturday</option>
<option>Sunday</option>
<option>Monday</option>
<option>Tuesday</option>
<option>Wednesday</option>
<option>Thursday</option>
<option>Friday</option>
*/

include_once 'connection.php';


//$query = "SELECT * FROM saturday;";
$result = mysqli_query($conn,$query);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


<style>

.error {color: #FF0000;}
  table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #000000;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #347be650;
}



body {
  background: url('../img/admin.png') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
}



#header1 {
              background: linear-gradient(117deg, rgba(26,231,26,0.5817337893368153) 49%, rgba(20,19,19,0.5339809803480513) 50%, rgba(44,237,12,0.5087000814716467) 51%);
              background-size: 400% 400%;
                animation: BackgroundGradient 30s ease infinite;
            } 
            
            #header2 {
            
            background: linear-gradient(117deg, rgba(226,9,9,1) 0%, rgba(197,226,72,1) 52%, rgba(3,0,255,1) 100%);
            
            background-size: 400% 400%;
            animation: BackgroundGradient 5s ease infinite;
            }
            #header3 {             
            background: linear-gradient(50deg, rgba(26,132,230,1) 0%, rgba(235,18,24,1) 50%, rgba(246,246,6,1) 100%);                        
            background-size: 400% 400%;
            animation: BackgroundGradient 5s ease infinite;
            }
          
            @keyframes BackgroundGradient {
                  0% {background-position: 0% 50%;}
                  50% {background-position: 100% 50%;}
                  100% {background-position: 0% 50%;}
              }
</style>


</head>
<body>
    <!--See Recode-->  
<!--SHOW RECORD ################################################-->
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="POST">
<div class="row container" >
  <div class="col-lg-2 col-sm-6 bg-warning m-1 p-auto btn">
      <div class="form-group">
          <label for="sel1">Select Day:</label>
          <span class="error">* </span>
        <select class="form-control" name="h_show_day" id="sel1" required="required" autofocus required>
           <option selected hidden value="">Select DAY</option>  
            <option>Saturday</option>
            <option>Sunday</option>
            <option>Monday</option>
            <option>Tuesday</option>
            <option>Wednesday</option>
            <option>Thursday</option>
            <option>Friday</option>
          </select>
        </div>
  </div>

  <div class="col-lg-2 col-sm-6 bg-warning m-1 p-auto btn">
      <div class="form-group">
          <label for="usr">AB</label>
          <select class="form-control" name="h_show_ab" id="sel1">
          <option selected hidden value="">Select AB</option>  
            <option>AB01</option>
            <option>AB02</option>
            <option>AB03</option>
            <option>AB04</option>                                                      
          </select>                                                    
        </div>
    </div>

    <div class="col-lg-2 col-sm-6 bg-warning m-1 p-auto btn">
        <div class="form-group">
            <label for="usr">ABno</label>
            <input type="text" class="form-control" id="usr" name="h_show_abNo">                                                   
          </div>
      </div>

<!--SUBMIT BUTTON **************-->
<div class="col-lg-2 col-sm-6 btn btn-outline-warning btn-lg m-auto p-auto " id="header1">
<div>
        <div class="m-auto p-auto d-flex justify-content-center ">
          <div class="my-auto p-auto"><i class="fas fa-sign-out-alt fa-lg mx-2 "></i></div>
          <div><button type="submit" class="btn btn-outline-light" style="border-radius: 50%;"><b>Submit</b></button></div>
        </div>
</div>
    </div>
<!--CLOSE SUBMIT BUTTON **************-->


<div class="col-lg-1 col-sm-6 btn btn-outline-danger m-auto p-auto  "  id="header3">

        <div><i class="fa fa-user fa-lg mx-2"></i><a href="../user/user.php" class="text-white h5">Exit</a></div>
         </div>



</div>
</form>
<!--CLOSE SHOW RECORD ################################################-->



<!--Php coding start $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-->
<table  align="center" border="1px" class="text-light" > 
         <tr>    
                
                 <th class="bg-warning">Day</th>
                 <th style="background-color: #ebd40d;">AB</th>
                 <th class="bg-warning">ABno</th>
                 <th class="bg-primary">08.30am-10.00am</th>
                 <th class="bg-info">10.00am-11.30am</th>
                 <th class="bg-primary">11.30am-01.00pm</th>
                 <th class="bg-info">01.00pm-02.30pm</th>
                 <th class="bg-primary">02.30pm-04.00pm</th>
                 <th class="bg-info">04.00pm-05.30pm</th>
                 
                 
                 
                 
                 
         </tr>  
<?php
while ($rows = mysqli_fetch_assoc($result)){
?>

<tr>
 
 <th><?php echo $rows['day']; ?></th>  
 <th><?php echo $rows['ab']; ?></th> 
 <th><?php echo $rows['abNo']; ?></th> 
 <th><?php echo $rows['one']; ?></th>
 <th><?php echo $rows['two']; ?></th>
 <th><?php echo $rows['three']; ?></th>
 <th><?php echo $rows['four']; ?></th>
 <th><?php echo $rows['five']; ?></th>
 <th><?php echo $rows['six']; ?></th>
 </tr>

<?php        
}
?>

</table>


</body>
</html>