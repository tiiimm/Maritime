<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="../assets/js/sweetaler2.js"></script>
    <!-- Favicons -->
    <link href="../assets/img/finallogo.png" rel="icon">
    <link href="../assets/img/finallogo.png" rel="apple-touch-icon">
</head>
<body>
<?php
session_start();

include '../includes/connection.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Perform necessary sanitization and validation on $username and $password
    if ($stmt = mysqli_prepare($link, "SELECT * FROM users WHERE username=?")) {
        mysqli_stmt_bind_param($stmt, "s", $username);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $status = $row['status'];

            if ($status == 'ACTIVE') {
                $hashed_password = $row['password'];

                if (password_verify($password, $hashed_password)) {
                    $_SESSION['username'] = $username;
                    $user_level = $row['role_id'];

                    // Redirect based on user_level
                    // if ($user_level == 2 || $user_level == 1) {
                        header("Location: ../index");
                        exit();
                    // } else {
                        // Handle other user levels as needed
                        // displayError('User level not authorized!');                    
                   
                    // }
                } else {
                    displayError('Invalid Password!');
                }
            } else {
                displayError('Account Inactive!');
            }
        } else {
            displayError('Invalid Username!');
        }

        mysqli_stmt_close($stmt);
    } else {
        displayError('Database query failed!');
    }

    mysqli_close($link);
}

function displayError($message) {
    echo "<script src='../assets/js/sweetalert2.all.min.js'></script>";
    echo "<script>
        Swal.fire({
            icon: 'error',
            title: '$message',
            text: 'Please contact your admin',
            showConfirmButton: false,
            timer: 2200
        }).then(function () {
            window.location.href = '../login';
        });
    </script>";
}
?>
</body>
</html>
