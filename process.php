<?php
include 'dblab3.php'; // Your database connection file

// Insert data if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];  // Get the username from the form
    $password = $_POST['password'];  // Get the password from the form

    // Check if the password is empty
    if (empty($password)) {
        echo "Password is required!";
        exit();
    }

    // Password strength check: at least 8 chars, one uppercase, one lowercase, one number, and one symbol
    $passwordPattern = "/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/";
    if (!preg_match($passwordPattern, $password)) {
        echo "Password must be at least 8 characters long, contain one uppercase letter, one lowercase letter, one number, and one special character.";
        exit();
    }

    // Hash the password for secure storage
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Encrypt the password using Caesar Cipher and Reverse String Method
    $caesarCipherPassword = caesarCipher($password, 3);  // Shift by 3 (key)
    $reversedPassword = reverseString($password);

    // Display results
    echo "<h3>Password Before and After Encryption</h3>";
    echo "Original Password: " . htmlspecialchars($password) . "<br><br>";
    echo "Caesar Cipher Encrypted Password (Shift 3): " . htmlspecialchars($caesarCipherPassword) . "<br>";
    echo "Reversed String Encrypted Password: " . htmlspecialchars($reversedPassword) . "<br>";
    echo "Hashed Password (password_hash): " . htmlspecialchars($hashedPassword) . "<br><br>";

    // Insert username and hashed password into DB
    $sql = "INSERT INTO user (username, password) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);

    if ($stmt === false) {
        echo "Error preparing statement: " . $conn->error;
        exit();
    }

    $stmt->bind_param("ss", $name, $hashedPassword);

    if ($stmt->execute()) {
        echo "<strong>Data inserted successfully!</strong> <br><a href='login.php'>Login here</a>";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();

// Function for Caesar Cipher
function caesarCipher($text, $shift) {
    $result = "";
    for ($i = 0; $i < strlen($text); $i++) {
        $char = $text[$i];
        if (ctype_alpha($char)) {
            $asciiOffset = ctype_upper($char) ? 65 : 97;
            $result .= chr((ord($char) - $asciiOffset + $shift) % 26 + $asciiOffset);
        } else {
            $result .= $char;
        }
    }
    return $result;
}

// Function to reverse string
function reverseString($text) {
    return strrev($text);
}
?>
