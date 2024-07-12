CREATE DATABASE NearbyServicesDB;

USE NearbyServicesDB;

CREATE TABLE Places (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    type ENUM('hospital', 'pharmacy') NOT NULL,
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL
);

INSERT INTO Places (name, address, type, latitude, longitude)
VALUES 
('General Hospital', '123 Main St', 'hospital', 40.712776, -74.005974),
('City Pharmacy', '456 Elm St', 'pharmacy', 40.712776, -74.005974);
