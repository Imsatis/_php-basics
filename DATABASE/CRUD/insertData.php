<?php

include_once('functions.php');

connection();

echo '
<form action="insertData.php" method="post">

<label>Name : </label>
<input type="text" name="name">
<label>Last Name : </label>
<input type="text" name="lname">
<label>User Name : </label>
<input type="text" name="uname">
<label>Password : </label>
<input type="password" name="password">
<label>Email : </label>
<input type="text" name="email">
<input type="submit" name="submit" value="submit">
</form>
';
if(isset($_POST['name']) && isset($_POST['lname']) && isset($_POST['uname']) && isset($_POST['password']) && isset($_POST['email'])) {

$name=$_POST['name'];
$lname=$_POST['lname'];
$uname=$_POST['uname'];
$password=$_POST['password'];
$email=$_POST['email'];


$INSERT="INSERT INTO _temp(_name,_lastname,_username,_password,_email) VALUE('$name','$lname','$uname','$password','$email')";

if($conn->query($INSERT)) {
    
}else{
    echo "Quebry Failed";
 }
}

connection_close()

?>