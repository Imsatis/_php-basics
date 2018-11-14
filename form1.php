<?php
   
   if(isset($_GET['Id'])) {
        $Id=$_GET['Id'];
        echo "Your Id is: ".$Id."<br>";
   }

   if(isset($_GET['Name'])){
        $Name=$_GET['Name'];
        echo "Your Name is: " .$Name."<br>";
   }
  
   if(isset($_GET['Stream'])) {
        $Stream=$_GET['Stream'];
        echo "Your Stream is: ".$Stream."<br>";
   }

   if(isset($_GET['Email'])){
        $Email=$_GET['Email'];
        echo "Your Email is: ".$Email."<br>"; 
   }

   
   ?>


<html >
<head>
    <title>Document</title>
</head>
<body>
    <form action="form.php" method="get">
        Id:
        <input type="text" name="Id">
        Name:
        <input type="text" name="Name">
        Stream:
        <input type="text" name="Stream">
        Email:
        <input type="text" name="Email">
        <input type="submit" name="submit" value="submit">
    </form>
</body>
</html>