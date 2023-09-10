<?php 
$adminusername = $_POST["username"];
$adminpassword = $_POST["password"];
include("../include/connection.php");

$select = "SELECT username , password FROM users WHERE username = '$adminusername' and password = '$adminpassword'";
$query = $connect->query($select);
$result = $query->fetch();
if($result){
    header("Location: ../../examples/main.php");
}
else{
    header("Location: ../../index.php");
}
$connect = null;
?>