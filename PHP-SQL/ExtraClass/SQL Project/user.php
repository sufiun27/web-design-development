
<?php
$name = htmlspecialchars($_REQUEST['SelectTime']);

include_once 'connection.php';
$query = "SELECT roomno FROM test where $name = '';";
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




<!--csss-->
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
         

<!-- Second SEction--> 
           
<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
            <div class="bg-dark text-primary ">
                     <ul class="nav ">
                              <!--Day Selection-->
                             <li class="nav-item bg-warning btn m-1">
                                     <div class="form-group">
                                             <label for="sel1">Select Day:</label>
                                             <select class="form-control" name="SelectDay" id="sel1">
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

                                     
                                      <!--Time Selection-->
                             <li class="nav-item bg-warning btn m-1">
                                <div class="form-group">
                                        <label for="sel1">Select Time:</label>
                                        <select class="form-control" name="SelectTime" id="sel1">
                                        <option selected hidden value="">Select Time</option>  
                                          <option>Time_9am_10am</option>
                                          <option>Time_10am_11am</option>
                                          <option>Time_11am_12pm</option>
                                          <option>Time_12pm_1pm</option>
                                          <option>Time_1pm_2pm</option>
                                      
                                        </select>
                                      </div>
                                <!--Day Selection-->
                             
                             
                        
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <li class="nav-item bg-warning btn m-1">
                                          
                                          <p><a href="index.php">Admin</a></p>
                                        </li>
                           </ul>
                   </div>
           </div>

           </form>         

<!--Php coding start-->
<?php



?>



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
 
 <th><?php echo $rows['roomno']; ?></th> 
    
 </tr>
<?php        
}
?>

</table> 





         </form>          

    


</body>
</html>