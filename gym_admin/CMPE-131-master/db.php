// SJSU CMPE 138 Fall 2020 TEAM8
<?php

$servername = "localhost";
$username = "root";
$password = "";
$db = "gym_manage";

// Create connection
$con = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>
