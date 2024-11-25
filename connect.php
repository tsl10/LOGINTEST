<?php
$host="ip-10-0-10-253";
$user="admin";
$pass="admin";
$db="login";
$conn=new mysqli($host,$user,$pass,$db);
if($conn->connect_error){
    echo "Failed to connect DB".$conn->connect_error;
}
?> 