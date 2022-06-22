<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

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
</style>
</head>
<body>
<div><i class="fa fa-user fa-lg mx-2"></i><a href="./csvtosql.html" class="text-white">Exit</a></div>
<table align="center" border="1px" class="text-light" > 
<tr>    
                 
                 <th class="bg-warning">Day</th>
                 <th style="background-color: #ebd40d;">AB</th>
                 <th class="bg-warning">ABno</th>
                 <th >serial</th>
                 <th class="bg-primary">08.30am-10.00am</th>
                 <th class="bg-info">10.00am-11.30am</th>
                 <th class="bg-primary">11.30am-01.00pm</th>
                 <th class="bg-info">01.00pm-02.30pm</th>
                 <th class="bg-primary">02.30pm-04.00pm</th>
                 <th class="bg-info">04.00pm-05.30pm</th>
                 
                 
                 
                 
                 
         </tr>



<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "extraclass";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (isset($_POST['submit'])) 
{
 //Import uploaded file to Database
 $handle = fopen($_FILES['filename']['tmp_name'], "r");
 
 while(($data = fgetcsv($handle)) !== FALSE){

    $p_day =           $data[0];
    $p_ab_abNo=        $data[1];
    $p_ab =            substr($data[1],0,-4);
    $p_abNo =          substr($data[1], 5,);
    $p_one =           $data[2].$data[3];
    $p_two =           $data[4].$data[5];
    $p_three =         $data[6].$data[7];
    $p_four =          $data[8].$data[9];
    $p_five =          $data[10].$data[11];
    $p_six =           $data[12].$data[13];
?>

<tr>
 
 <th><?php echo $p_day; ?></th>  
 <th><?php echo $p_ab; ?></th> 
 <th><?php echo $p_abNo; ?></th> 
 <th><?php echo $p_ab_abNo; ?></th> 
 <th><?php echo $p_one; ?></th> 
 <th><?php echo $p_two; ?></th>
 <th><?php echo $p_three; ?></th>
 <th><?php echo $p_four; ?></th>
 <th><?php echo $p_five; ?></th>
 <th><?php echo $p_six; ?></th>
</tr>

<?php
 $sql = "INSERT INTO $p_day (day,ab_abNo,ab,abNo,one,two,three,four,five,six) VALUES('$p_day','$p_ab_abNo','$p_ab','$p_abNo','$p_one','$p_two','$p_three','$p_four','$p_five','$p_six')";
 
 
 mysqli_query($conn, $sql) ;






 /*
echo $p_day;
echo $p_ab_abNo;
echo $p_one;
echo $p_two;
echo $p_three;
echo $p_four;
echo $p_five;
echo $p_six;
*/


/*
 echo $data[0];
 echo $data[1];
 echo $data[2];
 echo $data[3];
 echo $data[4];
 echo $data[5];
 echo $data[6];
 echo $data[7];
 echo $data[8];
 echo $data[9];
 echo $data[10];
 echo $data[11];
 echo $data[12];
 echo $data[13];
 echo "</br>it is a new line </br>";
 */

}
}


?>  

</table>
</body>
</html>

