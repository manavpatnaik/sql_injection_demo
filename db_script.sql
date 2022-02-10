CREATE DATABASE IF NOT EXISTS sql_injection;

USE sql_injection;

CREATE TABLE users
(
	uid INT AUTO_INCREMENT PRIMARY KEY,
    uname VARCHAR(25) NOT NULL,
    upass VARCHAR(25) NOT NULL,
    uphone VARCHAR(25) NOT NULL
);

INSERT INTO 
users (uname, upass, uphone)
VALUES 
("Harini", "harrypotter", "8736534"),
("Gomathi", "goms", "1233455"),
("Saipadmesh", "sairockzz", "1269420"),
("Rithika", "rithikarulez", "4567890"),
("Manav", "noobcoder", "3245683");

CREATE TABLE items
(
itemid INT PRIMARY KEY AUTO_INCREMENT,
itemname VARCHAR(20) NOT NULL,
quantity INT NOT NULL,
PRICE DECIMAL(6,2) NOT NULL
);

INSERT INTO 
items (itemname, quantity, price)
VALUES 
("Bottle", 12, 5),
("Water", 10, 3.5),
("Meat", 12, 5.5),
("Laptop", 20, 9.5),
("Fruits", 10, 50),
("Vegetables", 12, 15),
("Electronics", 121, 25),
("Vehicles", 120, 35);
