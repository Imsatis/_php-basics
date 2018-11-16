<?php

$conn = new mysqli("localhost","root","","studentdata");

if ($conn->connect_error) {

}else {
    #echo "Connection Established";
}

if(isset($_GET['ID'])){
    $ID=$_GET['ID'];

$SELECT="DELETE FROM studentinfo where Id=$ID";
$conn->query($SELECT);

}



$SELECT="SELECT * FROM studentinfo";

$results=$conn->query($SELECT);

if ($results->num_rows>0) {
    while($row=$results->fetch_assoc()){ 
    //print_r($row);
      echo "Name is: ".$row['Name']."<a href='deleteId.php?ID={$row['Id']}'> DELETE</a><br>";
    }
}


$conn->close();
?>