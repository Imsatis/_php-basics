<?php

//Post and Get method only accessable with in a same page//

include_once "superGlobalTest.php";
if(isset($_POST['submit'])) {
 
//header("location:superGlobalTest.php");
test();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
    
  <form action='superGlobal.php' method='post'>
  <input type='text' name='name'>
  <input type='submit' name='submit'>
  </form>


</body>
</html>