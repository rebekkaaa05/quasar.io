CREATE DATABASE AmbulanceServiceDB;

USE AmbulanceServiceDB;

CREATE TABLE AmbulanceServices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    city VARCHAR(100) NOT NULL
);

INSERT INTO AmbulanceServices (name, location, phone, city)
VALUES 
('Amma Ambulance And Mobile Mortuary Service', 'Vanchiyor, Thiruvananthapuram', '09054242294', 'Thiruvananthapuram'),
('Medihome Family Clinic Pvt. Ltd', 'Thampanoor, Thiruvananthapuram', '08490939136', 'Thiruvananthapuram'),
('Pravasi Ambulance Service And Mobile Mortuary', 'Kattakkada, Thiruvananthapuram', '07947187960', 'Thiruvananthapuram'),
('Kerala Ambulance and Mobile Mortuary Coffins', 'Pattom, Thiruvananthapuram', '07947187843', 'Thiruvananthapuram'),
('Lords Hospital', 'Anayara, Thiruvananthapuram', '07947120845', 'Thiruvananthapuram'),
('Al Arif Hospital', 'Ambalathara, Thiruvananthapuram', '07947142661', 'Thiruvananthapuram'),
('Abhiram Ambulance', 'Cheruvikkal, Thiruvananthapuram', '07947414670', 'Thiruvananthapuram'),
('Karunya Ambulance & Mobile Mortuary', 'Parassala, Thiruvananthapuram', '07947415316', 'Thiruvananthapuram'),
('Ranjith Ambulance Service', 'Ulloor, Thiruvananthapuram', '07947415268', 'Thiruvananthapuram'),
('Santhi Kavadam', 'Thycaud, Thiruvananthapuram', '0471-2323574', 'Thiruvananthapuram'),
('Anupama Scans', 'Neyyattinkara, Thiruvananthapuram', '07942685612', 'Thiruvananthapuram'),
('Bharath Ambulance', 'Parassala, Thiruvananthapuram', '07947417357', 'Thiruvananthapuram'),
('Sivaji Ambulance And Mobile Mortuary Service', 'Aakulam, Thiruvananthapuram', '07947416157', 'Thiruvananthapuram'),
('Nanma Ambulance & Mobile Mortuary Service', 'Parassala, Thiruvananthapuram', '07947117773', 'Thiruvananthapuram'),
('St Xaviers Karunya Ambulance', 'Vattappara, Thiruvananthapuram', '07947139535', 'Thiruvananthapuram'),
('SPAAN ICU Ambulance Service', 'Anayara, Thiruvananthapuram', '07947146287', 'Thiruvananthapuram'),
('Amritha Ambulance & Mobile Mortuary Service', 'Thuruvikkal, Thiruvananthapuram', '07947146609', 'Thiruvananthapuram'),
('Janaseva Ambulance & Mobile Mortuary Service', 'Parassala, Thiruvananthapuram', '07947119274', 'Thiruvananthapuram'),
('Athidhi Ambulance', 'Attingal, Thiruvananthapuram', '07947117873', 'Thiruvananthapuram'),
('Livecare Ambulance Service Varkala', 'Varkala, Thiruvananthapuram', '07947118523', 'Thiruvananthapuram'),
('SKSSF Ambulance', 'Kaniyapuram, Thiruvananthapuram', '07947118395', 'Thiruvananthapuram');
