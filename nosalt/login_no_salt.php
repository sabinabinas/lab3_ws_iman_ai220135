<?php
$conn = new mysqli("localhost", "root", "", "lab3_security");

$username = $_POST['username'];
$password = $_POST['password'];
$password_hash = sha1($password); // Hash entered password

$sql = "SELECT * FROM users_no_salt WHERE username = ? AND password_hash = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $username, $password_hash);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    echo "Login successful.";
} else {
    echo "Invalid credentials.";
}
?>
