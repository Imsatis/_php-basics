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
  

 

 ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
        <!-------------------------------Top Wrap------------------------------>
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
                         
                      <?php
                          
                         $SELECT="SELECT * FROM USER";
                         $results=$conn->query($SELECT);
                         if($results->num_rows>0) {
                             echo "<ul>";
                              while($row=$results->fetch_assoc()){
                                  echo "<li><a href='userPage.php?ID={$row['_ID']}'>".$row['_NAME']."</li>";
                              }echo "</ul>";
                         }   

                      ?>

                  </div>
                  <div class="col-md-9"></div>
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