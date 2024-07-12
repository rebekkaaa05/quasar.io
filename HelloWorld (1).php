<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "NearbyServicesDB";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name, address, type, latitude, longitude FROM Places";
$result = $conn->query($sql);

$places = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $places[] = $row;
    }
} 

echo json_encode($places);

$conn->close();
?>
