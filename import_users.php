<!DOCTYPE html>
<html>
<head>
  <script src="assets/js/sweetaler2.js"></script>
</head>
<body>
<?php
// Check if the form is submitted
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

require 'vendor_office/autoload.php';
include 'includes/connection.php';

use PhpOffice\PhpSpreadsheet\IOFactory;

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    date_default_timezone_set('Asia/Manila');
    $philippines_datetime = date('Y-m-d h:i:s A');
   
    // Handle file upload for UPDATE operation (if a new file is selected)
    if (isset($_FILES['evidence']) && $_FILES['evidence']['error'] === UPLOAD_ERR_OK) {
        // Retrieve the file information
        $file_name = $_FILES['evidence']['name'];
        $file_tmp = $_FILES['evidence']['tmp_name'];
        $file_size = $_FILES['evidence']['size'];
        $file_type = $_FILES['evidence']['type'];

        // Define allowed file types
        $allowed_file_types = array(    
            'application/vnd.ms-excel', // Excel 97-2003
            'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', // Excel 2007 and newer
            'application/vnd.openxmlformats-officedocument.spreadsheetml.template' // Excel template
        );

        // Check if the uploaded file type is allowed
        if (!in_array($file_type, $allowed_file_types)) {
            // Handle file type not allowed error (you can add error handling as per your requirement)
            echo "<script>
            console.log('Displaying error message');
            Swal.fire({
                icon: 'error',
                title: 'Upload Failed!',
                text: 'Only Excel files are allowed.',
                showConfirmButton: false,
                timer: 1500
            }).then(function () {
                window.location.href = 'index?load=users';
            });
        </script>";
        
            exit; // Exit the script if file type is not allowed
        }

        // Import Excel data into database
        $excel_file_path = $file_tmp;

        try {

            $spreadsheet = IOFactory::load($excel_file_path); // Load Excel file
            $sheet = $spreadsheet->getActiveSheet(); // Select active sheet

            $rowIterator = $sheet->getRowIterator();
            $rowCount = 0;

            // Loop through each row in the Excel file
            foreach ($rowIterator as $row) {
                $rowCount++;
                if ($rowCount <= 1) {
                    continue; 
                }
                
                $rowData = $row->getCellIterator();
                $data = array();
                foreach ($rowData as $cell) {
                    $data[] = $cell->getValue();
                }

                // Insert data into database
                $sql = "INSERT INTO users (id, name, username, email, status) 
                VALUES (?, ?, ?, ?, ?) 
                ON DUPLICATE KEY UPDATE 
                name = VALUES(name), 
                username = VALUES(username), 
                email = VALUES(email), 
                status = VALUES(status)";
                $stmt = $link->prepare($sql);
                $stmt->bind_param("issss", $data[0], $data[1], $data[2], $data[3], $data[4]);
                $stmt->execute();
            }

            // Success message
            echo "<script>
                console.log('Displaying success message');
                Swal.fire({
                    icon: 'success',
                    title: 'Upload Successful!',
                    text: 'Excel data has been imported into the database.',
                    showConfirmButton: false,
                    timer: 1500
                }).then(function () {
                    window.location.href = 'index?load=users';
                });
            </script>";

        } catch (Exception $e) {
            // Error message if Excel file cannot be loaded
            echo "<script>
                console.log('Displaying error message');
                Swal.fire({
                    icon: 'error',
                    title: 'Upload Failed!',
                    text: 'Error importing Excel data into the database.',
                    showConfirmButton: false,
                    timer: 1500
                }).then(function () {
                    window.location.href = 'index?load=users';
                });
            </script>";
        }
    } else {
        // Error message if no file is uploaded
        echo "<script>
            console.log('Displaying error message');
            Swal.fire({
                icon: 'error',
                title: 'Upload Failed!',
                text: 'Please upload an Excel file.',
                showConfirmButton: false,
                timer: 1500
            }).then(function () {
                window.location.href = 'index?load=users';
            });
        </script>";
    }
}
?>
</body>
</html>