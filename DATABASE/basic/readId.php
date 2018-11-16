<?php
$servername="localhost";
$username="root";
$password="";
$dbname="userlogin";



$conn= new mysqli($servername,$username,$password,$dbname);

if ($conn->connect_error) {
    echo "Connection Failed";    
}

$SELECT="SELECT * FROM userdata";

if($result=$conn->query($SELECT)) {

    IF ($result->num_rows>0) {
        echo "<ul>";
           while($row=$result->fetch_assoc()){
               
               echo "<li><a href='readid.php?ID={$row['_UNIQID']}'>{$row['_NAME']}</a></li>";
           }
           echo"</ul>"; 
    }else{
      echo "No Result Found";
  }
}

if(isset($_GET['ID'])) {
    $ID=$_GET['ID'];
    $SELECT="SELECT * FROM USERDATA WHERE _UNIQID=$ID";
    $results=$conn->query($SELECT);
     if($results->num_rows>0) {
         while($row=$results->fetch_assoc()) {
             echo "Name :".$row['_NAME']."<br>";
             echo "Username :".$row['_USERNAME']."<br>";
             echo "Email :".$row['_EMAIL']."<br>";
         }
           
    }


    }




?>