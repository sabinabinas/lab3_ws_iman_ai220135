<?php
$conn = new mysqli("localhost", "root", "", "lab3_security");

$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT salt, password_hash FROM users_with_salt WHERE username = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();

if ($row = $result->fetch_assoc()) {
    $salt = $row['salt'];
    $password_hash = hash('sha256', $password . $salt);

    if ($password_hash === $row['password_hash']) {
        echo "Login successful.";
    } else {
        echo "Invalid credentials.";
    }
} else {
    echo "User not found.";
}
?>
