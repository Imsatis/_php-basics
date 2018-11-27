<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "library";

$conn  = new mysqli($servername, $username, $password, $dbname);

if($conn->connect_error){
echo "Sorry connection not established";
}

$result = $conn->query("select * from students order by studentId desc");

if($result->num_rows>0){
	
	 while($row = $result->fetch_assoc()){		 
	 echo "Student Name: " . $row['studentName'];
	 echo "<br />";	 
	 }	
	}else{
		echo "No record found";
	}

$conn->close();

?>

