<?php
$p_serial       = $_GET['h_serial'];
$p_update_day   = $_GET['h_update_day'];
$p_update_ab    = $_GET['h_update_ab'];
$p_update_abNo  = $_GET['h_update_abNo'];
$p_update_one   = $_GET['h_update_one'];
$p_update_two   = $_GET['h_update_two'];
$p_update_three = $_GET['h_update_three'];
$p_update_four  = $_GET['h_update_four'];
$p_update_five  = $_GET['h_update_five'];
$p_update_six   = $_GET['h_update_six'];

//echo $p_serial;
//for test the values
/*
echo $p_update_day   ."</br>";
echo $p_update_ab    ."</br>";
echo $p_update_abNo  ."</br>";
echo $p_update_one   ."</br>";
echo $p_update_two   ."</br>";
echo $p_update_three ."</br>";
echo $p_update_four  ."</br>";
echo $p_update_five  ."</br>";
echo $p_update_six   ."</br>";
*/
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!--//boothtrap-->
        <link rel="stylesheet" href="./css,bootstrap,jquery/bootstrap.min.css">
        <script src="./css,bootstrap,jquery/bootstrap.bundle.min.js"></script>

    </head>
 <body>
<!-- insert SEction--> 
<form action="update2.php" method="POST">
 <div class="container-fluid bg-danger text-primary ">
 <div class="bg-dark text-primary ">
  <ul class="nav ">
     <!--Day Selection-->
     <li class="nav-item bg-warning btn m-1">
       <div class="form-group">
          <label for="sel1">Select Day:</label>
          <select class="form-control" name="h_day" id="sel1" value="<?php echo $_GET['h_update_day']; ?>">
            
            <option><?php echo $_GET['h_update_day']; ?></option>
            <!--
            <option>Saturday</option>
            <option>Sunday</option>
            <option>Monday</option>
            <option>Tuesday</option>
            <option>Wednesday</option>
            <option>Thursday</option>
            <option>Friday</option> -->
          </select> 
        </div>
       </li>
       <!--Day Selection-->
                                                                        
<!--class room -->                                                                                
<li class="nav-item bg-warning btn m-1">
   <div class="form-group">
      <label for="usr">AB</label>
      <select class="form-control" name="h_ab" id="sel1 value="<?php echo $_GET['h_update_ab']; ?>">
         
        <option>AB_01</option>
        <option>AB_02</option>
        <option>AB_03</option>
        <option>AB_04</option>                                                      
      </select>                                                    
    </div>
 </li>


<li class="nav-item bg-warning btn m-1">
 <div class="form-group">
    <label for="usr">ABno</label>
    <input type="text" class="form-control" id="usr" name="h_abNo" value="<?php echo $_GET['h_update_abNo']; ?>">                                                    
  </div>
</li>
<!--class room -->
                               
 <!--Time Selection-->
   <li class="nav-item bg-warning btn m-1">
     <div class="form-group">
       <label for="usr">08.30am-10.00am</label>
       <input type="text" class="form-control" id="usr" name="h_one" value="<?php echo $_GET['h_update_one']; ?>">
     </div>
   </li>

   <li class="nav-item bg-warning btn m-1">
    <div class="form-group">
       <label for="usr">10.00am-11.30am</label>
       <input type="text" class="form-control" id="usr" name="h_two" value="<?php echo $_GET['h_update_two']; ?>">
     </div>
   </li>

    <li class="nav-item bg-warning btn m-1">
     <div class="form-group">
        <label for="usr">11.30am-01.00pm</label>
        <input type="text" class="form-control" id="usr" name="h_three" value="<?php echo $_GET['h_update_three']; ?>">
      </div>
    </li>

   <li class="nav-item bg-warning btn m-1">
     <div class="form-group">
       <label for="usr">01.00pm-02.30pm</label>
       <input type="text" class="form-control" id="usr" name="h_four" value="<?php echo $_GET['h_update_four']; ?>">
     </div>
   </li>

  <li class="nav-item bg-warning btn m-1">
     <div class="form-group">
       <label for="usr">02.30pm-04.00pm</label>
       <input type="text" class="form-control" id="usr" name="h_five" value="<?php echo $_GET['h_update_five']; ?>">
     </div>
    </li>
                                    
    <li class="nav-item bg-warning btn m-1">
      <div class="form-group">
        <label for="usr">04.00pm-05.30pm</label>
        <input type="text" class="form-control" id="usr" name="h_six" value="<?php echo $_GET['h_update_six']; ?>">
      </div>
    </li>

    <li class="nav-item bg-warning btn m-1">
      <div class="form-group">                                                    
        <input type="submit" class="form-control" id="usr" value="Update" name="submit_update">
      </div>
     </li>
    <!--Time Selection-->    
                                    
   </ul>
 </div>
</div>            
</form>
 </body>
</html>
