<?php
include "connDatabase.php";

$SUCCESSFUL="";

if (isset($_POST['name']) && 
    isset($_POST['username']) && 
    isset($_POST['email']) && 
    isset($_POST['password']) && 
    isset($_POST['mobile']) &&
    isset($_POST['gender']) ) {

$name=$_POST['name'];
$username=$_POST['username'];
$email=$_POST['email'];
$password=$_POST['password'];
$mobile=$_POST['mobile'];
$gender=$_POST['gender'];

$INSERT="INSERT INTO user(_NAME,_USERNAME,_EMAIL,_PASSWORD,_MOBILE,_GENDER) 
         VALUE('$name','$username','$email','$password','$mobile','$gender')";

 if ($conn->query($INSERT)) {
      $GLOBALS['SUCCESSFUL']="<strong>SUCCESFULLY SIGN UP</strong>";

 }else{
     echo "Query Failed";
 }

}

$conn->close();

?>






<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">    

<style>
    .login{
        float:left;
        margin-left:10px;
    }
    .placeholder {
    font-size: 14px;
    padding: 4px 8px;
    margin-left:5px;
    margin-bottom:10px;
    width:40%
    }
    .width{
        width:81.7%;
    }
    input.gendr{
        margin-left:10px;
    }
    .gender{
    color: #1d2129;
    font-size: 18px;
    font-weight: normal;
    line-height: 18px;
    padding: 0 10px 0 3px;   
    }
    input.signUp{
        width:40%;
        margin-left:5px;
    }
    .back{
        #background:#eeeeee;
    }
</style>
</head>
<body>
    
    <div class=loginContainer>
          <div class="container">
                 <div class="jumbotron">
                    <div class="row">
                    <div class="col-md-6"></div>
                    
                      <div class="col-md-6 ">
                       <form action="validation.php" method="post">
                           <div class="login">
                           <label for="username">Username:</label><br>
                              <input type="text" name="username" required>
                           </div>
                           <div class="login right">
                           <label for="password">Password:</label><br>
                              <input type="password" name="password" >
                            <input type="submit" class="btn btn-primary" value="Log in" name="button">
                           </div>
                       </form>
                       </div>
                    </div>
                 </div>
          </div>
    </div>

    <div class="container">
        <div class="jumbotron">
        <div class="row">
             <div class="col-md-6"></div>
             <div class="col-md-6">
             <form action="indexPage.php" method="post">
                           
                    <input class="placeholder" type="text" name="name" placeholder="Name" required>
                         
                    <input class="placeholder " type="text" name="username" placeholder="Username" required>
                         
                    <input class="placeholder width" type="text" name="email" placeholder="Email" required>
                         
                    <input class="placeholder width" type="password" name="password" placeholder="New password" required>
                         
                    <input class="placeholder" type="text" name="mobile" placeholder="Mobile">

                    <input class="gendr" type="radio" name="gender" value="male" >
                        <label class="gender">Male</label>

                    <input class="gendr" type="radio" name="gender" value="female" >
                    <label class="gender">Female</label>
                    <input type="submit" class="btn btn-success signUp" value="Sign Up"><?php echo " $SUCCESSFUL";?>
             </div>
        </div>
    </div>
  </div>
</body>
</html>