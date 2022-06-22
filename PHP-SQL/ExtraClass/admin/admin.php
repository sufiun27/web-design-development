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
        <!--//boothtrap-->
        <link rel="stylesheet" href="./css,bootstrap,jquery/bootstrap.min.css">
        <script src="./css,bootstrap,jquery/bootstrap.bundle.min.js"></script>
       <!-- //css-->
        <link rel="stylesheet" href="./create/create.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/v4-shims.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">

<!--css-->
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
              background: radial-gradient(circle, rgba(74,251,63,0.8276763230227353) 0%, rgba(53,255,61,0.2434066601013869) 100%);
              background-size: 400% 400%;
              animation      : BackgroundGradient 10s ease infinite;
            } 
            #header2 {
              background     : radial-gradient(circle, rgba(63,94,251,1) 0%, rgba(252,70,107,1) 100%);
              background-size: 400% 400%;
              animation      : BackgroundGradient 10s ease infinite;
            }     
            
           
            @keyframes BackgroundGradient {
                  0% {background-position: 0% 50%;}
                  50% {background-position: 100% 50%;}
                  100% {background-position: 0% 50%;}
              }
</style>

</head>
 <body>
<div class="container-fluid"  >

<!-- User and Log Out nav bar ##############################################-->
 
<div class="row"  >

<div class="col-lg-3 col-sm-6 btn btn-outline-success btn-lg m-1 " >

<div><i class="fa fa-user fa-lg mx-2"></i><a href="../user/user.php" class="text-white">User</a></div>
</div>

<div class="col-lg-3 col-sm-6 btn btn-outline-danger btn-lg m-1 " >

<div><i class="fas fa-sign-out-alt fa-lg mx-2"></i><a href="./logout.php" class="text-white">Log Out</a></div>
</div>

<div class="col-lg-5  m-auto text-center">
  <h2 class="text-light"  style="font-family: 'Roboto', serif; font-size: 30px"><i>Insert Data </i><i class="fas fa-arrow-down mx-2"></i></h1>
</div>

</div>
                                  
<!--User and Loag Out nav bar #####################################################-->
           
<!-- insert SEction--> 
<!--INSERT SECTION #########################################################-->
<form action="insert.php" method="POST">

<div class="row  p-auto m-auto " > <!--main row-->
  <div class="col-lg-4 col-sm-12  p-auto m-auto"><!--main row first column-4-->
    <div class="row p-auto m-auto "> <!--main row first column-4 -> row -->
      
      <div class="col-lg-4 col-sm-6 bg-warning p-auto m-auto btn">
          <div class="form-group">
              <label for="sel1">Select Day:</label>
              <span class="error">* </span>
              <select class="form-control" name="h_day" id="sel1" required="required" autofocus required>
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

      <div class="col-lg-4 col-sm-6 p-auto m-auto btn" style="background-color: #ebd40d;">
          <div class="form-group">
              <label for="usr">AB</label>
              <span class="error">* </span>
              <select class="form-control" name="h_ab" id="sel1" required="required" autofocus required>
                <option selected hidden value="">Select AB</option>  
                <option>AB01</option>
                <option>AB02</option>
                <option>AB03</option>
                <option>AB04</option>                                                      
              </select>                                                    
            </div>
      </div>

      <div class="col-lg-4 col-sm-6 bg-warning p-auto m-auto btn" >
          <div class="form-group">
              <label for="usr">ABno</label>
              <span class="error">* </span>
              <input type="text" class="form-control" id="usr" name="h_abNo" required="required" autofocus required>                                                    
            </div>
      
      </div>

  </div><!--main row first column-4-> row -->
    
  </div><!--main row first column-4-->
  
  <div class="col-lg-8 col-sm-12   p-auto m-auto"><!--main row first column-8-->
    <div class="row p-auto m-auto "> <!--main row first column-8 -> row -->
      
      <div class="col-lg-2 col-sm-6 bg-primary p-auto m-auto btn">
           <div class="form-group">
              <label class="text-light " for="usr"><b>08.30am-10.00am</b></label>
              <input type="text" class="form-control" id="usr" name="h_one">
            </div>
      </div>

      <div class="col-lg-2 col-sm-6 bg-info p-auto m-auto btn">
          <div class="form-group">
              <label class="text-light " for="usr"><b>10.00am-11.30am</b></label>
              <input type="text" class="form-control" id="usr" name="h_two">
            </div>
      </div>

      <div class="col-lg-2 col-sm-6 bg-primary p-auto m-auto btn">
          <div class="form-group">
              <label class="text-light " for="usr"><b>11.30am-01.00pm</b></label>
              <input type="text" class="form-control" id="usr" name="h_three">
            </div>
      
      </div>

      <div class="col-lg-2 col-sm-6 bg-info p-auto m-auto btn">
          <div class="form-group">
              <label class="text-light " for="usr"><b>01.00pm-02.30pm</b></label>
              <input type="text" class="form-control" id="usr" name="h_four">
            </div>
      </div>

      <div class="col-lg-2 col-sm-6 bg-primary p-auto m-auto btn">
          <div class="form-group">
              <label class="text-light" for="usr"><b>02.30pm-04.00pm</b> </label>
              <input type="text" class="form-control" id="usr" name="h_five">
            </div>
      </div>

      <div class="col-lg-2 col-sm-6 bg-info p-auto m-auto btn">
          <div class="form-group">
              <label class="text-light " for="usr"><b>04.00pm-05.30pm</b></label>
              <input type="text" class="form-control" id="usr" name="h_six">
            </div>
      
      </div>


      
      </div><!--main row first column-8 -> row -->

  
  </div><!--main row first column-8-->
</div><!--main row-->

<div class="row " ><!--button--><!--SUBMIT BUTTON **************-->

<!--SUBMIT BUTTON **************-->
<div class="col-lg-4 col-sm-6 btn btn-outline-warning btn-lg m-auto p-auto " id="header1">
<div>
        <div class="m-auto p-auto d-flex justify-content-center ">
          <div class="my-auto p-auto"><i class="fas fa-sign-out-alt fa-lg mx-2 "></i></div>
          <div><button type="submit" class="btn btn-outline-light" style="border-radius: 50%;"><b>Submit</b></button></div>
        </div>
</div>
    </div>
<!--CLOSE SUBMIT BUTTON **************-->
<!-- insert from csv file button -->
<div class="col-lg-3 col-sm-6 btn btn-outline-primary btn-lg m-1 " id="header2">

<div><i class="fa fa-user fa-lg mx-2"></i><a href="../csv/csvtosql.html" class="text-white">Insert From .csv File</a></div>
</div>
<!-- insert from csv file button -->
</div><!--colose button--><!--CLOSE SUBMIT BUTTON  and insert button **************-->
     
</form>
<!--CLOSE INSERT SECTION #########################################################-->    

<!--See Recode-->  
<!--SHOW RECORD ################################################-->
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="POST">
<div class="row  "   >
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


<div class="col-lg-2 col-sm-6 m-auto  p-auto" >

          <div > <h2 class="text-light"> <i class="fas fa-arrow-left fa-sm mx-2 text-light" ></i>Show Data</h2> </div>
         </div>



</div>
</form>
<!--CLOSE SHOW RECORD ################################################-->




</div>
<!--Php coding start $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-->
 <table align="center" border="1px" class="text-light" > 
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
                 <th colspan="2" class="bg-danger">Operations</th>
                 
                 
                 
                 
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
 <th class="btn btn-outline-warning "><?php echo "<a href='update.php?h_serial=$rows[serial]&h_update_day=$rows[day]&h_update_ab=$rows[ab]&h_update_abNo=$rows[abNo]&
 h_update_one=$rows[one]&h_update_two=$rows[two]&h_update_three=$rows[three]&h_update_four=$rows[four]&
 h_update_five=$rows[five]&h_update_six=$rows[six]'>Edit</a>" ?></th>
 <th class="btn btn-outline-danger "><?php echo "<a href='delete.php?h_serial=$rows[serial]&h_update_day=$rows[day]&h_update_ab=$rows[ab]&h_update_abNo=$rows[abNo]'
 onclick='return checkdelete()' >Delete</a>" ?></th>
         
 </tr>

<?php        
}
?>

</table> 

<script>
 function checkdelete()
 {
   return confirm('Confirm for delete dis data');
 }
</script>

</body>
</html>