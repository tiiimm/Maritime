<?php
$password = '12345678';

// Hash the password using bcrypt
$hashedPassword = password_hash($password, PASSWORD_BCRYPT);
echo "Hashed Password: $hashedPassword\n";
?>