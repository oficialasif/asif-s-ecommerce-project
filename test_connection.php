<?php
include('includes/conn.php');

if ($con) {
    echo "Database connection successful!";
} else {
    echo "Connection failed: " . mysqli_connect_error();
}
?>
