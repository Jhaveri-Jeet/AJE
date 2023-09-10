<?php 
$flavour = $_POST["flavour"];
include("../include/connection.php");

$insert = "INSERT INTO flavour (flavour) VALUES ('$flavour')";
$query = $connect->query($insert);
header("Location: ../../examples/flavour.php");
$connect = null;
?>