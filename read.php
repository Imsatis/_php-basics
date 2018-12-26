    <?php

$servername="localhost";
$username="root";
$password="";
$dbname="studentdata";


$SELECT="SELECT * FROM studentinfo;";

$conn = new mysqli($servername,$username,$password,$dbname);

if ($conn->errno){
    echo "Connection Error: ".$conn->error,"<br>";
}else{
    echo "Connection Established <br>";
}

if ($result= $conn->query($SELECT)) {

   if($result->num_rows>0) {
       while(  $row=$result->fetch_assoc()  ) {
            echo "name is: ".$row['Name']."<br>";
           #print_r($row)."<br>";
        }
   }
}else{
    echo "QUERY FAIL";
}

$conn->close();
?>