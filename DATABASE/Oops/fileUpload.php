<?php

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
  print_r($_POST);

}



?><!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
    
    <form action='' method='post' enctype='multipart/form-data'>
        <input type='text' name='file'>
        <input type='text' name='fil'>
        <input type='text' name='fi'>
        <input type='text' name='f'>
        <input type='submit' name='submit'>
    </form>

</body>
</html>

<?php echo "<img src='$target' alt='no' height='' width=''/>";?>