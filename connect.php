<?php
$host="34.222.90.55";
$user="admin";
$pass="admin";
$db="login";
$conn=new mysqli($host,$user,$pass,$db);
if($conn->connect_error){
    echo "Failed to connect DB".$conn->connect_error;
}
?> 