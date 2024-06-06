<?php

/* Database credentials */
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'chedro9mobt_db';
 
/* Attempt to connect to MySQL database */
$link = mysqli_connect($servername, $username, $password, $dbname);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}


try {
    /* Attempt to connect to MySQL database using PDO */
    $connect = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected to the database successfully!";
} catch (PDOException $e) {
    // echo "Connection failed: " . $e->getMessage();
    exit();
}
?>
    