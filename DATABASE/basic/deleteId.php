<html lang="en">
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <title>Document</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
   <style>
      .red{
          color:black;
          margin-left:5px;
      }
      .red:hover{
        color:red;
      }
   </style>

</head>
<body>

<?php
$servername="localhost";
$username="root";
$password="";
$dbname="STUDENTDATA";



$conn= new mysqli($servername,$username,$password,$dbname);

if ($conn->connect_error) {
    echo "Connection Failed";    
}


if(isset($_GET['ID'])) {
    $ID=$_GET['ID'];
    $DELETE="DELETE FROM studentinfo WHERE Id=$ID";
    $result=$conn->query($DELETE);

}

$SELECT="SELECT * FROM studentinfo";

$results=$conn->query($SELECT);

if($results->num_rows>0) {
    echo "<ul>";
    while($row=$results->fetch_array()) {
    echo "<li>".$row['Name']."<a href='deleteId.php?ID={$row['Id']}'><span class='red'><i class='fas fa-trash'></i></span></a></li><br>";
      }
    echo "</ul>";  
    }else{
    echo "NO Record Found";
}





?>

    
</body>
</html>




