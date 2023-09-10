<?php 
$flavour = $_POST["flavour"];
$category = $_POST["category"];
$packing = $_POST["packing"];
$date = $_POST["date"];
$quantity = $_POST["quantity"];

include("../include/connection.php");
$insert = "INSERT INTO purchase (flavour , category ,packing, date , quantity) VALUES ('$flavour' , '$category' , '$packing' , '$date' , $quantity)";
$queryinsert = $connect->query($insert);
$select = "SELECT count(*) as count FROM stock WHERE category = '$category' and flavour = '$flavour'";
$queryselect = $connect->query($select);
$result = $queryselect->fetch();
// print_r($result);
// exit;
    if($result['count'] > 0){
        $update = "UPDATE stock SET quantity = quantity+$quantity WHERE category = '$category' and flavour = '$flavour'";
        $queryupdate = $connect->query($update);
    }
    else{
        $insertstock = "INSERT INTO stock (flavour , category ,packing, quantity) VALUES ('$flavour' , '$category' , '$packing' , $quantity)";
        $querystock = $connect->query($insertstock);
    }
header("Location: ../../examples/purchase.php");
$connect = null;
?>