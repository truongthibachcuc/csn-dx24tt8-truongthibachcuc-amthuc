<?php
$conn = new mysqli('localhost', 'root', '', 'db_amthuc_nambo');
if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);
?>