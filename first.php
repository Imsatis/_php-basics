<?php
 
 /*
 $txt='<div style="background-color:red; height:50px; width:50px;"></div>';

 function test(){
     global $txt;
     echo $txt;
 }
echo "hellow world !"; */
/*
     function test(){
         $var=0;
         echo $var;
         $var++;
     }

     test();
     test();
     test();  */
/*
     class car{
         function car(){
             $this->model="BMW";
         }
     }
     $obj= */


     //string replace;

     $replace='World!';
     $Testing='Hellow Test';

     $replaced=str_replace('Test',$replace,$Testing);
     echo $replaced.'<br>';
     echo addcslashes("n","n").'<br>';
     echo $replaced.'<br>';
     echo $Testing;
     echo "\n\n";
     echo $remove=chop($replaced,"<br>");
     #echo strlen($remove);
     
     echo $remove."<br>";
     echo chunk_split($remove,5,".")."<br>";

     //count-chars 

     echo count_chars($remove,4)."<br>";
     //explode
     $str = 'one,two,three,four';
     print_r(explode(',',$str,0));
?>