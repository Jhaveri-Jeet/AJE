<?php 
$category = $_POST["category"];
include("../include/connection.php");

$insert = "INSERT INTO category (category) VALUES ('$category')";
$query = $connect->query($insert);
header("Location: ../../examples/purchase.php");
$connect = null;
?>