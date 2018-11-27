<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "library";
// Step 1 ======================
$conn  = new mysqli($servername, $username, $password, $dbname);
// Step 2 ======================
if($conn->connect_error){
echo "Sorry connection not established";
}

// ======================
if(isset($_GET['id'])){
$id = $_GET['id'];

$results = $conn->query("DELETE FROM students WHERE studentId=$id");
}
//============================

$results = $conn->query("select * from students order by studentId desc limit 5");


if($results->num_rows>0){
	echo "<ul>";
	while($row = $results->fetch_assoc()){
		echo "<li>{$row['studentName']}<a href='delete.php?id={$row['studentId']}'> <img src='images/delete.png' alt='delete'height='10' width='10'/></a></li>";
	}
	echo "</ul>";
}else{
	echo "No Record Find";
}

// Step 5 ======================
$conn->close();
?>