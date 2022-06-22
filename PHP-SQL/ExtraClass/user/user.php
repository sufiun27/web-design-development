
<?php

error_reporting(0);
$p_show_user_time = htmlspecialchars($_REQUEST['h_show_user_time']);
$p_show_user_day = htmlspecialchars($_REQUEST['h_show_user_day']);


if      ($p_show_user_time == '08.30am-10.00am'){ $p_show_user_time = 'one'; }
else if ($p_show_user_time == '10.00am-11.30am'){ $p_show_user_time = 'two'; }
else if ($p_show_user_time == '11.30am-01.00pm'){ $p_show_user_time = 'three'; }
else if ($p_show_user_time == '01.00pm-02.30pm'){ $p_show_user_time = 'foure'; }
else if ($p_show_user_time == '02.30pm-04.00pm'){ $p_show_user_time = 'five'; }
else if ($p_show_user_time == '04.00pm-05.30pm'){ $p_show_user_time = 'six'; }

//echo $p_show_user_day." = ". $p_show_user_time;

include_once 'connection.php';
$query = "SELECT ab,abNo FROM $p_show_user_day where $p_show_user_time = '' ORDER BY ab, abNo;";
$result = mysqli_query($conn,$query);





?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>


    <!--//boothtrap-->
    <link rel="stylesheet" href="./css,bootstrap,jquery/bootstrap.min.css">
    <script src="./css,bootstrap,jquery/bootstrap.bundle.min.js"></script>
   <!-- //css-->
    <link rel="stylesheet" href="./create/create.css">
     <!--Font Awsome ##################################-->
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/v4-shims.css">
 <!--Font Awsome ##################################-->




<!--csss-->
<style>
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


#header {
                background     : linear-gradient(132deg,rgb(221, 11, 11),rgb(26, 36, 223));
                background-size: 400% 400%;
                animation      : BackgroundGradient 10s ease infinite;
            }

            #header5 {
                      background     : linear-gradient(132deg,rgba(234, 245, 81, 0.3),rgba(26, 36, 223, 0.6));
                      background-size: 400% 400%;
                      animation      : BackgroundGradient 5s ease infinite;
            } 

            #header2 {
                background     : linear-gradient(132deg,rgba(11, 32, 221, 0.76),rgba(49, 223, 26, 0.733));
                background-size: 400% 400%;
                animation      : BackgroundGradient 10s ease infinite;
            } 
            #header3 {
                background     : linear-gradient(132deg,rgb(26, 36, 223),rgb(221, 11, 11));
                background-size: 400% 400%;
                animation      : BackgroundGradient 20s ease infinite;
            }
            #header1 { 
            
            background: linear-gradient(117deg, rgba(226,9,9,1) 0%, rgba(197,226,72,1) 52%, rgba(3,0,255,1) 100%);
                                    
            background-size: 400% 400%;
            animation: BackgroundGradient 10s ease infinite;
            }
            @keyframes BackgroundGradient {
                  0% {background-position: 0% 50%;}
                  50% {background-position: 100% 50%;}
                  100% {background-position: 0% 50%;}
              }
</style>

</head>
<body>
         
<div class="container bg-dark" >

   <!--  USER  #################################################-->        
<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
<div class="row" >
  <div class="col-lg-3 col-sm-6  p-auto m-auto btn btn-outline-warning" id="header5">
      <div class="form-group">
          <label for="sel1" class="text-light"><b>Select Day:</b> </label>
          <select class="form-control" name="h_show_user_day" id="sel1" required="required" autofocus required>
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

  <div class="col-lg-3 col-sm-6 p-auto m-auto btn btn-outline-warning" id="header5">
      <div class="form-group">
          <label for="sel1" class="text-light"><b>Select Time:</b></label>
          <select class="form-control" name="h_show_user_time" id="sel1" required="required" autofocus required>
            <option selected hidden value="" >Select Time</option>  
              <option>08.30am-10.00am</option>
              <option>10.00am-11.30am</option>
              <option>11.30am-01.00pm</option>
              <option>01.00pm-02.30pm</option>
              <option>02.30pm-04.00pm</option>
              <option>04.00pm-05.30pm</option>                                    
            </select>
          </div>
    </div>

<!--SUBMIT BUTTON **************-->
<div class="col-lg-2 col-sm-6 btn btn-outline-warning btn-lg m-auto p-auto " >
<div>
        <div class="m-auto p-auto d-flex justify-content-center ">
          <div class="my-auto p-auto"><i class="fas fa-sign-out-alt fa-lg mx-2 "></i></div>
          <div><button type="submit" class="btn btn-outline-light" style="border-radius: 50%;"><b>Submit</b></button></div>
        </div>
</div>
    </div>
<!--CLOSE SUBMIT BUTTON **************-->

      <div class="col-lg-2 col-sm-6 btn btn-outline-danger btn-lg m-auto p-auto " >

          <div><i class="fas fa-sign-out-alt fa-lg mx-2"></i><a href="../index/index.php" class="text-white">Log Out</a></div>
          </div>
        
          
          <div class="col-lg-2 col-sm-6 btn btn-outline-success  m-auto p-auto  " style="border-radius: 10%;" id="header1">

          <div><i class="fa fa-user fa-lg "></i><a href="../croom/croom.php" class="text-white h5">Routine</a></div>
         </div>

        
          
</div>
   </div>

 </form>       
 <!-- CLOSE USER  #################################################-->  
 </div>

<!--Php coding start $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-->
<table align="center" border="1px" class="text-light container"> 
   <tr>
          <!-- <th>Day</th>  -->
           <th style="background-color: #daececa2;">AB</th>
           <th>ABno</th>
         <!--  <th>9am-10am</th>
           <th>10am-11am</th>
           <th>11am-12pm</th>
           <th>12am-1pm</th>
           <th>1am-2pm</th> -->                                  
   </tr>  
<?php
while ($rows = mysqli_fetch_assoc($result)){
?>
<tr> 
 <th><?php echo $rows['ab']; ?></th> 
 <th><?php echo $rows['abNo']; ?></th> 
    
 </tr>
<?php        
}
?>

</table> 
</body>
</html>