<?php session_start(); ?>
<?php include('dbcon.php'); ?>


<?php
                if (isset($_POST['login']))
                  {
                    $username = mysqli_real_escape_string($con, $_POST['user']);
                    $password = mysqli_real_escape_string($con, $_POST['pass']);
                    
                    
                    $query 		= mysqli_query($con, "SELECT * FROM users WHERE  password='$password' and username='$username'");
                    $row		= mysqli_fetch_array($query);
                    $num_row 	= mysqli_num_rows($query);

                    
                    
                    if ($num_row > 0) 
                      {			
                        $_SESSION['user_id']=$row['user_id'];
                        header('location:home.php');
                       
                      }
                    else
                      {
                        echo "<script>alert('Invalid Password')</script>";
                        ?>
                        <META HTTP-EQUIV="Refresh" CONTENT="0; URL= http://localhost/ExtraClass/index/# ">
                        <?php
                      }
                  }
                ?>