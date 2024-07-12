<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "HomeHealthCareDB";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    $sql = "INSERT INTO ContactMessages (name, email, message) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $name, $email, $message);

    if ($stmt->execute()) {
        echo json_encode(["message" => "Contact message submitted successfully"]);
    } else {
        echo json_encode(["message" => "Error submitting contact message"]);
    }

    $stmt->close();
}

$conn->close();
?>
