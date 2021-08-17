<?php


  $DBhost = "localhost";
  $DBuser = "root";
  $DBpass = "";
  $DBname = "spanish_helper";
  
  
  $DBcon = new MySQLi($DBhost,$DBuser,$DBpass,$DBname);
  
  mysqli_set_charset($DBcon,"utf8");
    
     if ($DBcon->connect_errno) {
         die("ERROR : -> ".$DBcon->connect_error);
     }	 
?>	