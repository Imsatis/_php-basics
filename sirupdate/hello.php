<?php
if(isset($_GET['firstname'])){
$name = $_GET['firstname'];
echo "Your name is: " . $name;
}else{
echo "Please fill the form";
}
?>

<HTML>
<HEAD>
<TITLE> name of page </TITLE>
</HEAD>
<body>
<form action="hello.php" method="get">
  First name:
  <input type="text" name="firstname"><br>
  <input type="submit" name="submit" value="submit">
</form>
</body>
</HTML>

