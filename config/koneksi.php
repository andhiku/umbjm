<?php
$server = "localhost";
$username = "root";
$password = "usbw";
$database = "umbjm";

// Koneksi dan memilih database di server
mysql_connect($server,$username,$password) or die("Koneksi Gagal");
mysql_select_db($database) or die("Database Tidak Ada");

$conn = new mysqli($server, $username, $password, $database);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
