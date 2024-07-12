<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "AmbulanceServiceDB";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$city = isset($_GET['city']) ? $_GET['city'] : '';

$sql = "SELECT name, location, phone FROM AmbulanceServices WHERE city LIKE ?";
$stmt = $conn->prepare($sql);
$city = "%$city%";
$stmt->bind_param("s", $city);
$stmt->execute();
$result = $stmt->get_result();

$ambulanceServices = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $ambulanceServices[] = $row;
    }
} 

echo json_encode($ambulanceServices);

$conn->close();
?>
