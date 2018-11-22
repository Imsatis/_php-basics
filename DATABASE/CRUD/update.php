<?php

$conn = new mysqli('localhost','root','','userlogin');

if($conn->connect_error)
{
echo "not connect";
}else{
//echo "connect";
}


//update -------------------------------------


if(isset($_POST['uname']) && isset($_GET['ID'])) {
    $uname=$_POST['uname'];
    $id=$_GET['ID'];
    
    $UPDATE="UPDATE user SET _Name='$uname' WHERE _ID=$id";
    
    if($conn->query($UPDATE)) {
    
    }else{
    echo "query fail";
    }
    
    }





//QUERY KA PART -------------------------------------


$SELECT="SELECT * FROM user";

if($results=$conn->query($SELECT)) {

}else{
echo "query failed";
}


if($results->num_rows>0) {
while($row=$results->fetch_assoc()) {
echo "<a href='update.php?ID={$row['_ID']}'>" .$row['_NAME']. "</a><br><br>";
}


}else{
echo "No record Found";
}

if(isset($_GET['ID'])) {

$ID=$_GET['ID'];

$SELECT="SELECT * FROM user where _ID=$ID";

if($results=$conn->query($SELECT)){

$row=$results->fetch_assoc();
echo "Name is ".$row['_NAME']."<a href='update.php?ID={$row['_ID']}&flag=1'> UPDATE</a><br><br>"; 
if(isset($_GET['flag'])) {
$check=$_GET['flag'];

if($check==1) {
echo "<form action='update.php?ID={$row['_ID']}' method='post'>
<label>Name:</label>
<input type='text' name='uname'>
<input type='submit' name='submit' value='UPDATE'>
</form>";
}
}
echo "Email is ".$row['_USERNAME']."<a href='update.php?ID={$row['_ID']}&flag=2'> UPDATE</a><br><br>";

if(isset($_GET['flag'])) {

$check=$_GET['flag'];

if($check==2) {
echo "<form action='update.php?ID={$row['_ID']}' method='post'>
<label>_USERNAME:</label>
<input type='text' name='uemail'>
<input type='submit' name='submit' value='UPDATE'>
</form>";
}
}

echo "Age is ".$row['_EMAIL']."<a href='update.php?ID={$row['_ID']}&flag=3'> UPDATE</a><br><br>"; 

if(isset($_GET['flag'])) {

$check=$_GET['flag'];

if($check==3) {
echo "<form action='update.php?ID={$row['_ID']}' method='post'>
<label>Email :</label>
<input type='text' name='uage'>
<input type='submit' name='submit' value='UPDATE'>
</form>";
}
}

}else{
echo "Query Failed";
}

}

$conn->close();


