<!--SJSU CMPE 138 Fall 2020 TEAM8-->
<?php

//connection info
$servername = "localhost";
$username = "root";
$password = "";
$db = "gym_manage";

//create connection
$con = mysqli_connect($servername, $username, $password,$db);

//check
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>
