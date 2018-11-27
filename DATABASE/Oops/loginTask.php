<?php

$servername="localhost";
$username="root";
$password="";
$dbname="userlogin";



$conn= new mysqli($servername,$username,$password,$dbname);

if ($conn->connect_error) {
    echo "Connection Failed";    
}

session_start();

if(isset($_POST['signup'])) {
   
    $array = array(
        'username'=>$_POST['username'],
        'email'=>$_POST['email'],
        'password'=>md5("{$_POST['password']}")
    );
    $check = array(
        'username'=>$_POST['username']
    );

    if(!user_check('loginTask',$check)){
      insert_row('user',$array);
    }else{
        echo "already";
    }

}


   
    if(isset($_POST['login'])) {
        
        $array = array(
        'username'=>$_POST['username'],
        'password'=>md5("{$_POST['password']}")
    );
        
        if(!account_verify('loginTask',$array)) {
            echo "wrong password";
      }else{
          $_SESSION['username'] = $_POST['username'];
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
               <input type="submit" class="btn btn-primary" value="Log in" name="login">
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
                         
                    
                    <input type="submit" class="btn btn-success signUp" name='signup' value="Sign Up"><?php //echo " $SUCCESSFUL";?>
             </div>
        </div>
    </div>
  </div>

    </body>
</html>   
 <?php

function user_check($tableName,$check){
     $columnName = array_keys($check);
     $value = array_values($check);
     $SELECT = "SELECT * FROM $tableName WHERE $columnName[0]='$value[0]'";
     global $conn;
     $result = $conn->query($SELECT);
     return ($result->num_rows>0);
}

function insert_row($tablename,$array) {

     
     $columnName = implode(",",array_keys($array));
     $values = "'".implode("','",(array_values($array)))."'";
     $INSERT = "INSERT INTO loginTask ($columnName) VALUES ($values)";
     global $conn;
     $conn->query($INSERT);

}

function account_verify($tableName,$array) {
    
    $columnName = array_keys($array);
   $values = array_values($array);
   $VERIFY = "SELECT * FROM $tableName WHERE ".$columnName[0] ." = '". $values[0] ."' && ".$columnName[1] ." = '". $values[1]."'"; 
    global $conn;
    $result=$conn->query($VERIFY);  
    return ($result->num_rows>0);
}

$conn->close();

?>