<?php
$servername="localhost";
$username="root";
$password="";
$dbname="client";
$TABLENAME="TAB";

$INSERT= "INSERT INTO $TABLENAME (
    _UNIQID,
    _FNAME,
    _LNAME,
    _EMAIL,
    _REGDATE
)VALUE (
    '1002',
    'MARY',
    'JANE',
    'MARYJANE@GMAIL.COM',
    '10/2018'
)";

$conn= new mysqli($servername,$username,$password,$dbname);

if ($conn->connect_error){
    echo "CONNECTION DENIED <BR>";
}else{
    echo "CONNECTION ESTABLISHED <BR>";
}

if($conn->query($INSERT)) {
     echo "DATA INSERTED SUCESSFULLY <BR>";
}else{
    echo "fAILED <BR>";
}

?>