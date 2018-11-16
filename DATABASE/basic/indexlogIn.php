  




<html lang="en">
<head>
    <title>Document</title>
    <style>
          .error{
              color:red;
          }
    </style>
</head>
<body>

<?php
#include "login.php";

$servername="localhost";
$user="root";
$pass="";
$dbname="userlogin";

$INCORRECT="";

$conn= new mysqli($servername,$user,$pass,$dbname);

if($conn->connect_error) {
    echo "CONNECTION FAILED";
}

else{ 
    
   #echo "CONNECTION ESTABLISHED";
}

if(isset($_POST['name']) && isset($_POST['username']) && isset($_POST['email']) && isset($_POST['password']))
{
    $name=$_POST['name'];
    $username=$_POST['username'];
    $email=$_POST['email'];
    $password=$_POST['password'];

    $INSERT="INSERT INTO userdata(_NAME,_USERNAME,_EMAIL,_PASSWORD)VALUE('$name','$username','$email','$password')";

    if($conn->query($INSERT)) {

    }
  }

  if(isset($_POST['USERNAME']) && isset($_POST['PASSWORD'])) {
      $USERNAME=$_POST['USERNAME'];
      $PASSWORD=$_POST['PASSWORD'];
      
      $data="SELECT * FROM USERDATA WHERE _USERNAME='$USERNAME'";
      $CHECK="SELECT * FROM userdata where _USERNAME='$USERNAME' AND _PASSWORD='$PASSWORD'";
      if($result=$conn->query($CHECK)){
           if($result->num_rows>0) {
               $userinfo=$conn->query($data);
               $INFO=$userinfo->fetch_assoc();
               #header("Location: userProfile.php");
               echo "<h2>!Hellow <b>$INFO[_NAME].....<b></h2><br>";
               echo "<h3>Your Username is: <b>$INFO[_USERNAME]</b></h3><br>";
               echo "<h3>Your Email id is: <b>$INFO[_EMAIL]</b></h3><br>";
               
           }else {
            $GLOBALS['INCORRECT']="INCORRECT PASSWORD";
           }  
      }else{
          echo "Query Fail";
      }
  }


$conn->close();

?>  
    
    <h1>Log In</h1>
    <form action="indexlogin.php" method="post">
         UserName:
             <input type="text" name="USERNAME" required>
         PassWord :
             <input type="password" name="PASSWORD">
             <input type="submit" name="submit" value="Log In"><span class="error"><?php echo $INCORRECT;?></span><br>
    </form>

    <h2>Sign Up</h2>
    <form action="indexlogin.php" method="post">
         Name-    
             <input type="text" name="name" required>
         UserName-
             <input type="text" name="username"><br>
         Email-
             <input type="text" name="email">
         PassWord-
             <input type="password" name="password"><br>
             <input type="submit" name="submit" value="Sign Up"><br> 

      </form>
</body>
</html>