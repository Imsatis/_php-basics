<?php

    include_once "loginFunc.php";

         $dbname="userlogin";
         $tableName="loginTask";

    $USER->connection_start($dbname,$tableName);

    session_start();

    if(!empty(isset($_POST['signup']))) {
    
    $array = array(
     
        'username'=>$_POST['username'],
        'email'=>$_POST['email'],
        'password'=>md5("{$_POST['password']}")
    
    );

    $check = array(
    
        'username'=>$_POST['username']
    
    );

    if(!$USER->user_check($check)){
        
        $USER->insert_row('user',$array);
        $SUCCESS = "<span class='green'>Succecfully Sign Up</span>";
    
     }else {

        $ALREADY = "<span class='red'>User Already Exist</span>";

    }

}

   
    if(!empty(isset($_POST['login']))) {
        
        $array = array(
        'username'=>$_POST['username'],
        'password'=>md5($_POST['password'])
    );
        
    if(!$USER->account_verify($array)) {
           
        $INCORRECT = "<br><span class='passred'>Password Incorrect</span>";
      
    }else {
        
        $_SESSION['username'] = $_POST['username'];
        header("location:profile.php");
      
    }
        
 }


?>

<html>
    <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
    .login{
        float:left;
        margin-left:10px; 
    }
    .red{
        margin-left:8px;
        color:red;
    }
    .green{
        margin-left:8px;
        color:green;
    }
    .passred{
        color:red;  
    }
    </style>
    </head>
    <body>
    <div class="container">
    <div class="jumbotron">
       <div class="row">
       <div class="col-md-6"></div>
       
         <div class="col-md-6 ">
          <form action="loginTask.php" method="post">
              <div class="login">
              <label for="username">Username:</label><br>
                 <input type="text" name="username" required>
              </div>
              <div class="login right">
              <label for="password">Password:</label><br>
                 <input type="password" name="password" >
               <input type="submit" class="btn btn-primary" value="Log in" name="login"><?php if(!empty($INCORRECT)) echo $INCORRECT;?>
              </div>
          </form>
          </div>
       </div>
    </div>
</div>

<div class="container">
        <div class="jumbotron">
        <div class="row">
             <div class="col-md-6"></div>
             <div class="col-md-6">
             <form action="loginTask.php" method="post">
                           
                         
                    <input class="placeholder " type="text" name="username" placeholder="Username" required>
                         
                    <input class="placeholder width" type="text" name="email" placeholder="Email" required><br>
                         
                    <input class="placeholder width" type="password" name="password" placeholder="New password" required>
                         
                    
                    <input type="submit" class="btn btn-success signUp" name='signup' value="Sign Up"><?php if(!empty($ALREADY)) {echo $ALREADY;}else if(!empty($SUCCESS)){echo $SUCCESS;}?>
             </div>
        </div>
    </div>
  </div>

    </body>
</html>   
 <?php

  $USER->connection_close()

?>