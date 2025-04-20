<?php
$conn = new mysqli("localhost", "root", "", "lab3_security");

$username = $_POST['username'];
$password = $_POST['password'];
$password_hash = sha1($password); // No salt

$sql = "INSERT INTO users_no_salt (username, password_hash) VALUES (?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $username, $password_hash);
$stmt->execute();

echo "User registered without salt.";
?>
