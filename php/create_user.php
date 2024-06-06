<!DOCTYPE html>
<html>
<head>
<title></title>
<script src="../assets/js/sweetaler2.js"></script>
      <!-- Favicons -->
  <link href="../assets/img/finallogo.png" rel="icon">
  <link href="../assets/img/finallogo.png" rel="apple-touch-icon">
</head>
<body>
<?php
include '../includes/connection.php';
session_start();

if (!isset($_SESSION['username'])) {
    header("location: ../login");
    exit();
}

$username = $link->real_escape_string($_SESSION['username']);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Step 1: Retrieve academic year from the form
    $fullname = $_POST['fullname'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $role = $_POST['role'];

    $hashedPassword = password_hash($password, PASSWORD_BCRYPT);

    date_default_timezone_set('Asia/Manila');
    $philippines_datetime = date('Y-m-d h:i:s A');

    // Step 2: Check for duplicate entry
    $check_duplicate_query = "SELECT email FROM users WHERE email = '$email'";
    $result = mysqli_query($link, $check_duplicate_query);

    if (mysqli_num_rows($result) > 0) {
        echo "<script>
        Swal.fire({
            icon: 'warning',
            title: 'Warning!',
            text: 'Email already exists!',
            showConfirmButton: false,
            timer: 2200
        }).then(function () {
            window.location.href = '../index?load=users';
        });
        </script>";
    } else {
        // Step 3: Insert academic year into the database
        $insert_query = "INSERT INTO users (name, username, email, password, role_id, status) VALUES ('$fullname', '$username', '$email' , '$hashedPassword', '$role', 'ACTIVE')";

        if (mysqli_query($link, $insert_query)) {
            echo "<script>
    Swal.fire({
        icon: 'success',
        title: 'Success!',
        text: 'User created successfully!',
        showConfirmButton: false,
        timer: 2200
    }).then(function () {
        window.location.href = '../index?load=users'; // Add the parameter here
    });
    </script>";
        } else {
            echo "Error: " . mysqli_error($link);
        }
    }

    mysqli_close($link);
} else {
    echo "Invalid request method!";
}
?>
</body>
</html>