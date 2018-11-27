<?php

include_once('function.php');

$obj->mb_connection_start();

$values = array(
'studentName' => 'Rakesh',
'studentEmail' => 'rakesh@gmail.com',
'studentAge' => 35
);

$obj->mb_insert_query('students', $values);

$obj->mb_connection_stop();


?>