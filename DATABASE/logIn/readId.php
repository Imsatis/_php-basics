<?php

$conn = new mysqli("localhost","root","","studentdata");

if ($conn->connect_error) {

}else {
    #echo "Connection Established";
}

$SELECT="SELECT * FROM studentinfo";

$results=$conn->query($SELECT);

if ($results->num_rows>0) {
     while($row=$results->fetch_assoc()){ 
     //print_r($row);
       echo "Name is: <a href='readId.php?ID={$row['Id']}'>".$row['Name']."</a><br>";
     }
}/* else{
    echo "No Record Found";
}*/

if(isset($_GET['ID'])){
   $ID=$_GET['ID'];
  
$SELECT=" SELECT * FROM studentinfo where Id='$ID'";

$results=$conn->query($SELECT);
  if($results->num_rows>0) {
      
    $row=$results->fetch_assoc();
    echo "Id is: ".$row['Id']."<br>";
    echo "Stream is: ".$row['Stream']."<br>";
    echo "Email is: ".$row['Email']."<br>";


  }else {
      echo "Not Found";
  }

}


?>