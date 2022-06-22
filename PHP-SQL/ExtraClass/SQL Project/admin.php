<?php
include_once 'connection.php';
$query = "SELECT * FROM test;";
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

<!--css-->
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>


    </head>

    <body>
            <!-- test nav bar -->
                  <div class="container-fluid bg-danger text-primary ">
                        <div class="container bg-dark text-primary ">
                                <ul class="nav ">
                                        <li class="nav-item bg-warning btn m-1">
                                          <a class="nav-link" href="#">Admin</a>
                                        </li>
                                        <li class="nav-item bg-warning btn m-1">
                                          
                                          <p><a href="user.php">User</a></p>
                                        </li>
                                        <li class="nav-item bg-warning btn m-1">
                                          
                                          <p><a href="./index/index.html">Log Out</a></p>
                                        </li>
                                        
                                      </ul>
                              </div>
                      </div>
            <!-- test nav bar -->

           





           <!-- Second SEction--> 
           <form action="insert.php" method="POST">
            <div class="container-fluid bg-danger text-primary ">
                    <div class="bg-dark text-primary ">
                            <ul class="nav ">
                                     <!--Day Selection-->
                                    <li class="nav-item bg-warning btn m-1">
                                            <div class="form-group">
                                                    <label for="sel1">Select Day:</label>
                                                    <select class="form-control" name="Day" id="sel1">
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
                                            <!--Day Selection-->
                                    
                                    
                                            <!--class room -->        
                                    </li>
                                    
                                    <li class="nav-item bg-warning btn m-1">
                                            <div class="form-group">
                                                    <label for="usr">Class Room</label>
                                                    <input type="text" class="form-control" id="usr" name="RoomNo">
                                                  </div>
                                    </li>
                               <!--class room -->
                               
                               <!--Time Selection-->
                               <li class="nav-item bg-warning btn m-1">
                                            <div class="form-group">
                                                    <label for="usr">9am-10am</label>
                                                    <input type="text" class="form-control" id="usr" name="One">
                                                  </div>
                                    </li>

                                    <li class="nav-item bg-warning btn m-1">
                                            <div class="form-group">
                                                    <label for="usr">10am-11am</label>
                                                    <input type="text" class="form-control" id="usr" name="Two">
                                                  </div>
                                    </li>


                                    <li class="nav-item bg-warning btn m-1">
                                            <div class="form-group">
                                                    <label for="usr">11am-12pm</label>
                                                    <input type="text" class="form-control" id="usr" name="Three">
                                                  </div>
                                    </li>


                                    <li class="nav-item bg-warning btn m-1">
                                            <div class="form-group">
                                                    <label for="usr">12pm-1pm</label>
                                                    <input type="text" class="form-control" id="usr" name="Four">
                                                  </div>
                                    </li>


                                    <li class="nav-item bg-warning btn m-1">
                                            <div class="form-group">
                                                    <label for="usr">1pm-2pm</label>
                                                    <input type="text" class="form-control" id="usr" name="Five">
                                                  </div>
                                    </li>


                                    <li class="nav-item bg-warning btn m-1">
                                            <div class="form-group">
                                                    
                                                    <input type="submit" class="form-control" id="usr">
                                                  </div>
                                    </li>


                                <!--Time Selection-->    
                                    
                                  </ul>
                          </div>
                  </div>
            
                </form>

<!--Php coding start-->
 <table align="center" border="1px" > 
         <tr>
                 <th>Day</th>
                 <th>ClassNo</th>
                 <th>9am-10am</th>
                 <th>10am-11am</th>
                 <th>11am-12pm</th>
                 <th>12am-1pm</th>
                 <th>1am-2pm</th>
                 
                 
         </tr>  
<?php
while ($rows = mysqli_fetch_assoc($result)){
?>

<tr>
 <th><?php echo $rows['day']; ?></th>  
 <th><?php echo $rows['roomno']; ?></th> 
 <th><?php echo $rows['Time_9am_10am']; ?></th> 
 <th><?php echo $rows['Time_10am_11am']; ?></th>
 <th><?php echo $rows['Time_11am_12pm']; ?></th>
 <th><?php echo $rows['Time_12pm_1pm']; ?></th>
 <th><?php echo $rows['Time_1pm_2pm']; ?></th>     
 </tr>

<?php        
}
?>

</table> 





    </body>
    </html>