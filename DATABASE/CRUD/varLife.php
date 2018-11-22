<?php
/* 
$var1="var1";

check();

if(1){
    echo $var1;
    $var2="inside if";
}


function check() {
    global $var1;
    //$var1="inside function";
    echo $var1;
    $var2;
}

$var1=23.18900877;

echo $var1;
echo $var2;  */


function check($number){
    if($number>1){
      throw new exception("Exception occured");
    }
  return true;
}

try {
    check(1);
    echo "NO Exception";
}

catch(exception $e){
   echo "Message! ".$e->getMessage();
}


?>