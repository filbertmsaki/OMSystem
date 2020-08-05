<?php
session_start();
include_once 'db.php';
$product_id = $_GET['id'];
$user_id = $_SESSION['uid'];
$ip ='127.0.0.1';

$sql  =  "INSERT INTO `cart`( `p_id`, `buyer_id`, `qty`, `ip_add`) VALUES ('$product_id','$user_id',1,'$ip')";
mysqli_query($con,$sql);
echo '<script>alert("Product added to cart Successful!");</script>';
header("location: index.php");

