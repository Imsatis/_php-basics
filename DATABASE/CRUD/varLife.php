<?php

$var1="var1";

check();

if(1){
    echo $var1;
}


function check() {
    global $var1;
    //$var1="inside function";
    echo $var1;
}

$var1=23.18900877;

echo $var1;

?>