

<?php
//static test;

class first{
    
    public static $count=10;
    //public $count=1;

    public static function count(){
        echo self::$count++;
    }
}

class second extends first {
    
    public function call(){
        first::count();
    }
}

$obj = new first;
$obj1 = new second;

$obj->count();
$obj->count();
$obj->count();
first::count();
first::count();
$obj1->call();
echo first::$count;

?>