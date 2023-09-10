<?php 
$flavour = $_POST["flavour"];
$category = $_POST["category"];
$packing = $_POST["packing"];
$date = $_POST["date"];
$quantity = $_POST["quantity"];
$customer = $_POST["customer"];

include("../include/connection.php");
$insert = "INSERT INTO sales (flavour , category ,packing, date , quantity , customer) VALUES ('$flavour' , '$category' , '$packing' , '$date' , $quantity , '$customer')";
$update = "UPDATE stock SET quantity = quantity-$quantity WHERE category = '$category' and flavour = '$flavour'";
$query = $connect->query($insert);
$query = $connect->query($update);
header("Location: ../../examples/sales.php");
$connect = null;
?>