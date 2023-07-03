<?php
include_once "../config/dbconnect.php";

$product_id = $_POST['product_id'];
$p_name = $_POST['p_name'];
$p_desc = $_POST['p_desc'];
$p_price = $_POST['p_price'];
$category = $_POST['category'];

if (isset($_FILES['newImage'])) {
    $location = "./uploads/";
    $img = $_FILES['newImage']['name'];
    $tmp = $_FILES['newImage']['tmp_name'];
    $dir = '../uploads/';
    $ext = strtolower(pathinfo($img, PATHINFO_EXTENSION));
    $valid_extensions = array('jpeg', 'jpg', 'png', 'gif', 'webp');
    $image = rand(1000, 1000000) . "." . $ext;
    $final_image = $location . $image;
    if (in_array($ext, $valid_extensions)) {
        $path = $dir . $image;
        move_uploaded_file($tmp, $path);
    }
} else {
    $final_image = $_POST['existingImage'];
}

// Prepare the SQL statement using prepared statements
$updateItemStmt = $conn->prepare("UPDATE product SET 
    product_name=?, 
    product_desc=?, 
    price=?,
    category_id=?,
    product_image=? 
    WHERE product_id=?");

// Bind the parameters to the prepared statement
$updateItemStmt->bind_param("ssdiss", $p_name, $p_desc, $p_price, $category, $final_image, $product_id);

// Execute the prepared statement
if ($updateItemStmt->execute()) {
    echo "true";
} else {
    echo "Error updating product details: " . $updateItemStmt->error;
}

// Close the prepared statement and database connection
$updateItemStmt->close();
$conn->close();
?>