<?php

    $Id=NULL;
    $Name=NULL;
    $Stream=NULL;
    $Email=NULL;
   
   if(isset($_GET['Id'])) {
         global $Id;
         $Id=$_GET['Id'];
        echo "Your Id is: ".$Id."<br>";
   }

   if(isset($_GET['Name'])){
       global $Name;
       $Name=$_GET['Name'];
        echo "Your Name is: " .$Name."<br>";
   }
  
   if(isset($_GET['Stream'])) {
        global $Stream;
        $Stream=$_GET['Stream'];
        echo "Your Stream is: ".$Stream."<br>";
   }

   if(isset($_GET['Email'])){
        global $Email;
        $Email=$_GET['Email'];
        echo "Your Email is: ".$Email."<br>"; 
   }

   
   


 
 $servername="localhost";
 $username="root";
 $password="";
 $dbname="studentdata";

 $data=new mysqli($servername,$username,$password,$dbname);

 if($data->connect_error){
     echo "sorry connection not establish";
 }
 else{
     echo"CONNECTED!...<BR>";
 }

   $query=$data->query("insert into studentinfo(Name,Stream,Email)value('$Name','$Stream','$Email')");
   $data->close();
?>




<html >
<head>
    <title>Document</title>
</head>
<body>
    <form action="insert.php" method="get">
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