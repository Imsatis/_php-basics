<?php
   
   if(isset($_GET['Name'])) {
        $Name=$_GET['Name'];
        echo "Your Name is: ".$Name."<br>";
   }else {
       echo"Please Fill The Form";
   }

   ?>


<html >
<head>
    <title>Document</title>
</head>
<body>
    <form action="form.php" method="get">

        Name:
        <input type="text" name="Name">
      
        <input type="submit" name="submit" value="submit">
    </form>
</body>
</html>