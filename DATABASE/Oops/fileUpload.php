<?php

$servername="localhost";
$username="root";
$password="";
$dbName="CRUD";


//========================SERVER-CONNECTION========================

$conn = new mysqli($servername, $username, $password, $dbName);

//========================DATABASE-CONNECTION======================

if($conn->connect_error) {
    echo "Connection Failed";    
}else {
    
}

$target='';

/*
$_ary = array('catt'=>'billii','dog'=>'kutta');

if(isset($_ary['cat'])) {
    echo $_ary['cat']."<br>";
}

//echo $_ary['cat']; 

*/
if(isset($_POST['submit'])) {
    //print_r($_FILES['file']);
    
 /*
    $target = "uploads/".$_FILES['file']['name'];
    $path = $_FILES['file']['tmp_name'];
    //echo basename('C:\xampp\htdocs\project');
    //echo $_FILES["file"]["name"];
    $options = PATHINFO_DIRNAME | PATHINFO_BASENAME | PATHINFO_EXTENSION | PATHINFO_FILENAME;
    //print_r(pathinfo("Oops/uploads/1.jpg",PATHINFO_DIRNAME | PATHINFO_BASENAME | PATHINFO_EXTENSION | PATHINFO_FILENAME));
    move_uploaded_file($path,$target);
*/
    
    print_r($_FILES['file']); 
    $name = $_FILES['File']['name'];
    $data = file_get_contents($_FILES['file']['tmp_name']);
    $type = $_FILES['file']['type'];

}



?><!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
    
    <form action='' method='post' enctype='multipart/form-data'>
        <input type='file' name='file'>
        <input type='submit' name='submit'>
    </form>

</body>
</html>

<?php 

echo "<img src='$data' alt='no' height='' width=''/>";
$INSERT = 'INSERT INTO ';
$conn->query('')
?>