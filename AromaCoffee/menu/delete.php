<?php

include "../connection.php";
session_start();
	

$id = $_SESSION["loggedin"];

$pid = $_GET["id"]; // get id through query string

$del = mysqli_query($connect,"DELETE from cart where cart_ID = '$pid' AND cart_CustomerID = '$id'"); // delete query

if($del)
{
    mysqli_close($connect); // Close connection
    echo "Remove item successfully";
    header("location:cart.php"); // redirects to all records page
   
}
else
{
    echo "Error deleting record"; // display error message if not delete
}
?>