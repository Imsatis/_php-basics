<?php

include_once('functions.php');

connection();


// ----------------------FORM-------------

echo '
<form action="Oops.php" method="post">

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

// ----------------------FORM-VALUES-------------


if(isset($_POST['name']) && isset($_POST['lname']) && isset($_POST['uname']) && isset($_POST['password']) && isset($_POST['email'])) {

    $name=$_POST['name'];
    $lname=$_POST['lname'];
    $uname=$_POST['uname'];
    $password=$_POST['password'];
    $email=$_POST['email'];
    

$values=array(
    '_name'=>'$name',
    '_lastname'=>'$lname',
    '_username'=>'$uname',
    '_password'=>'$password',
    '_email'=>'$email'
);

print_r($values);

// ----------------------FUNCTION-CALL-------------

insertData('_temp',$values);

}

//$array_to_string="'".implode("','",(array_values($values)))."'";
//echo $array_to_string;


//echo $array_to_string;  

connection_close()

?>