<?php 
$flavour = $_POST["flavour"];
$category = $_POST["category"];
$packing = $_POST["packing"];
$date = $_POST["date"];
$customer = $_POST["customer"];
$quantity = $_POST["quantity"];
$oldquantity = $_POST["oldquantity"];
$id = $_POST["id"]; 
include("../include/connection.php");

$update = "UPDATE sales SET flavour = '$flavour' , category = '$category' ,packing = '$packing',  date = '$date' , quantity = $quantity , customer = '$customer' WHERE id='$id'";
$updatestock = "UPDATE stock SET flavour = '$flavour' ,category = '$category', packing = '$packing' ,quantity = quantity+$oldquantity-$quantity WHERE category = '$category' and flavour = '$flavour'";
$query = $connect->query($update);
$connect->query($updatestock);
header("Location: ../../examples/sales.php");
$connect = null;
?>