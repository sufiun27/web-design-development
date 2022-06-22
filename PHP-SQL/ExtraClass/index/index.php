<?php session_start(); ?>
<?php include('dbcon.php'); ?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

 <!--//boothtrap-->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- css   <link rel="stylesheet" type="text/css" href="style.css">  -->
 <link rel="stylesheet" href="./create/create.css">
 
 

 <!--Font Awsome ##################################-->
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/v4-shims.css">
 <!--Font Awsome ##################################-->
 <!--google Font ##################################-->
 <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
  <!--google Font ##################################-->
<style>
body {
  background: url('../img/transport.png') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
}





            /*for admin*/
            #header1 {
              
              background     : linear-gradient(45deg, rgba(249,255,18,1) 40%, rgba(241,117,197,1) 51%, rgba(56,226,26,1) 61%);
              background-size: 400% 400%;
              animation      : BackgroundGradient 10s ease infinite;
            } 
            /*for user*/ 
            #header2 {
              background     : linear-gradient(45deg, rgba(56,226,26,1) 40%, rgba(241,117,197,1) 51%, rgba(249,255,18,1) 61%);
              background-size: 400% 400%;
              animation      : BackgroundGradient 10s ease infinite;
            }
            /*for daffodil*/ 
            #header3 {
              background: linear-gradient(45deg, rgba(56,226,26,0.5789248005727703) 40%, rgba(247,246,247,0.5171270477637816) 51%, rgba(18,44,255,0.4890371601233322) 61%);
              background-size: 400% 400%;
              animation      : BackgroundGradient 10s ease infinite;
            }

            @keyframes BackgroundGradient {
                  0% {background-position: 0% 50%;}
                  50% {background-position: 100% 50%;}
                  100% {background-position: 0% 50%;}
              }

</style>

    <title>Document</title>
</head>
<body>

<div class="container-fluid bg-info">
<!-- Admin and User nav bar ##############################################-->
 
<div class="row"  >

    <div class="col-lg-3 col-sm-6 btn btn-outline-danger btn-lg m-1 " id="header1">
    
        <div >
        <i class = "fas fa-user-cog fa-lg mx-2"></i>
        <a href  = "../login/login.php" class = "text-danger" data-toggle = "modal" data-target = "#exampleModal">Admin</a>
        </div>
        </div>

    <div class = "col-lg-3 col-sm-6 btn btn-outline-info btn-lg m-1 " id = "header2" >
    
    <div><i class = "fa fa-user fa-lg mx-2"></i><a href = "../user/user.php" class = "text-primary">User</a></div>
    </div>
            
    <div class = "col-lg-5  m-auto p-auto text-center" >
    <h2  class = "text-light h2"  style = "font-family: 'Tangerine', serif; font-size: 30px h3"><b><i>Daffodil International Univarsity</i></b></h1>
    </div>
    
    </div>
                                          
    <!--CLOSE Admin and User  nav bar #####################################################-->
    </div>

  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" >
      <div class="modal-content" id="header3">
        <div class="modal-header">
          <h5 class="modal-title text-light" id="exampleModalLabel">Login here</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!--body start ----------------------------------------------->
            <div class="form-wrapper" >
  
                <form action="password.php" method="post">
                  
                
                  <div class="form-item">
                  <p class="text-warning">User Name</p>
                  <input type="text" name="user" required="required" placeholder="Username" autofocus required >  </input>
                  </div>
                  
                  <div class="form-item">
                  <p class="text-warning">Password</p>
                  <input type="password" name="pass" required="required" placeholder="Password" required > </input>
                  </div>
                  
                  

                  <!--SUBMIT BUTTON **************-->

                  <div class="">
                  <input type="submit" id="header4" class="btn btn-warning  mx-0 my-2 px-5" title="Log In" name="login" value="Login"> </input>
                  </div>
                  </div>
                  <!--CLOSE SUBMIT BUTTON **************-->



                </form>
                                                
              </div>
         <!--body close ----------------------------------------------->     
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          
        </div>
      </div>
    </div>
  </div>












  

</body>
</html>