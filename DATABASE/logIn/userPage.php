<?php
 
 include "connDatabase.php"; 

 session_start();

  /*
   if(isset($_GET['username'])) {
       $USERNAME=$_GET['username'];
   }*/

  $USER="SELECT * FROM USER WHERE _USERNAME='{$_SESSION['username']}'";
  

  if($results=$conn->query($USER)) {
        
  }else{
      echo"QUERY FAILED";
  }

  $row=$results->fetch_assoc();

  $_SESSION['thisUserId']=$row['_ID'];
  $thisUserId=$_SESSION['thisUserId'];

 ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <style>
  .black{
      background:black;
  }

  .chat{
    margin-left:30px;
    font-size:20px;
  }
  
  .textWindow{
      height:170px;
      width:70%;
      margin:40px auto;
      background:#fff;
  }
  .contentwrap ul li{
      list-style-type:none;
      #border:2px solid red;
      margin:10px 0 20px;
      display-inline:block;

       
  }
  .contentwrap ul li a{
      text-decoration:none;
      font-size:20px;
      #border:2px solid red;
  }

  .message{
      margin-left:110px;
      margin-top:-30px;
      width:55%;
      height:80px;
      border:0;
      font-size:20px;
            
  }
  .button{
      margin-top:-70px;
      margin-left:15px;
  }
  
  </style>

</head>
<body>
        <!-------------------------------Top Wrap------------------------------>
<div class="black"> 
    <div class="topwrap">
          <div class="container">
              <div class="jumbotron">
                   <div class="row">
                        <div class="col-md-8">
                             <?php echo "<h2>Welcome ".ucfirst("{$row['_NAME']}")."!</h2>"?>
                        </div>
                        <div class="col-md-4"></div>
                   </div>
              </div>
          </div>
    </div>

     
     <!-------------------------------Top Wrap------------------------------>

    <div class="contentwrap">
         <div class="container">
            <div class="jumbotron">
               <div class="row">
                  <div class="col-md-3">
                      <!-------------------------------Php-User-List------------------------------>
                         <span class="chat"><b>CHAT USERS</b></span>
                      <?php
                          
$SELECT="SELECT * FROM USER WHERE NOT _USERNAME='{$_SESSION['username']}'";
                         $results=$conn->query($SELECT);
                         if($results->num_rows>0) {
                             echo "<ul>";
                              while($row=$results->fetch_assoc()){
                                  echo "<li><a href='userPage.php?targetUserId={$row['_ID']}'>".$row['_NAME']."</a></li>";
                              }echo "</ul>";
                         }   

                      ?>

                  </div>
                  <div class="col-md-9">
                     <div class="msg">
                            <?php
                            $SELECT="SELECT * FROM USER";
                            $results=$conn->query($SELECT);
                               
                            ?>

                            <div class="textWindow"></div>
                            <form method="post" action="userPage.php">
                            <textarea class="message" name="message" placeholder="Text Message"></textarea>
                            
                            <input type="submit" class="btn btn-success button" name="messages" value="send" >
                            </form>

                             

                            <?php

                               if(isset($_GET['targetUserId'])) {
                                   $_SESSION['targetUserId']=$_GET['targetUserId'];
                                }
                      
                              if(isset($_POST['message'])) {
                             
                                $message=$_POST['message'];
                                $targetUserId=$_SESSION['targetUserId'];
                                $uniqueKey=$thisUserId+$targetUserId;
                                $date=date("d/M/y");
                                $time=date("h:i a"); 
                                $INSERT="INSERT INTO usermessage(_uniqueKey,_sendUserKey,_message,_receiveUserKey,_date,_time) VALUE('$uniqueKey','$thisUserId','$message','$targetUserId','$date','$time')";
                                
                                $results=$conn->query($INSERT);
                                echo"Done";  
                            }else{
                                  echo "Failed";
                              }
                            
                            
                            ?>
                     </div>
                  </div>
               </div>
            </div>
         </div>
     </div>
   </div>


</body>
</html>

<!--

<div class="contentwrap">
         <div class="container">
            <div class="jumbotron">
               <div class="row">
                  <div class="col-md-3">
                  
                  </div>
                  <div class="col-md-9"></div>
               </div>
            </div>
         </div>
    </div>

-->