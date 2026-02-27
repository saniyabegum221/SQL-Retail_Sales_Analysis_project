CREATE TABLE customers(
customersid INT PRIMARY KEY,
customersname VARCHAR(50),
city VARCHAR(50)
);
CREATE TABLE products(
productid INT PRIMARY KEY,
productname VARCHAR(50),
category VARCHAR(50),
price INT
);
CREATE TABLE orders(
ordersid INT PRIMARY KEY,
customersid INT,
productid INT,
quantity INT,
orderdate DATE
);
INSERT INTO customers VALUES
(1,'Ayesha Khan','Indore'),
(2,'Rahul Sharma','Mumbai'),
(3,'Sara Ali','Delhi'),
(4,'Arjun Reddy','Chennai'),
(5,'Fatima Begum','Hyderabad'),
(6,'Rohit Verma','Bangalore'),
(7,'Neha Kapoor','Pune'),
(8,'Kiran Rao','Ahmedabad'),
(9,'Sneha Patil','Surat'),
(10,'Saniya Shaikh','Delhi'),
(11,'Rehan Siddique','Chennai'),
(12,'Varun Mehta','Haryana'),
(13,'Shiva Prasad','Banglore'),
(14,'Alia Mirza','Pune'),
(15,'Sana Qureshi','Lucknow'),
(16,'Nithin Agarwal','Mumbai'),
(17,'Payal Gupta','Haryana'),
(18,'Ruchika Jain','Jaipur'),
(19,'Sandhya Iyer','Pune'),
(20,'Ramya Nair','Hyderabad');

INSERT INTO products VALUES
(101,'Laptop','Electronics',55000),
(102,'Smartphone','Electronics',25000),
(103,'Headphones','Electronics',3000),
(104,'Bluetooth Speaker','Electronics',4000),
(105,'Smart TV','Electronics',60000),
(106,'Office Chair','Furniture',7000),
(107,'Study Table','Furniture',9000),
(108,'Sofa','Furniture',30000),
(109,'Bed','Furniture',40000),
(110,'Dining Table','Furniture',35000),
(111,'Running Shoes','Fashion',4500),
(112,'Handbag','Fashion',3500),
(113,'Wrist Watch','Accessories',6000),
(114,'Backpack','Fashion',2500),
(115,'Keyboard','Electronics',1500),
(116,'Mouse','Electronics',800),
(117,'Printer','Electronics',12000),
(118,'Power Bank','Electronics',2000),
(119,'Ceiling Fan','Home Appliances',5000),
(120,'Air Conditioner','Home Appliances',45000);

INSERT INTO Orders VALUES
(1,8,101,1,'2024-03-12'),
(2,3,105,1,'2024-05-18'),
(3,15,103,2,'2024-07-09'),
(4,1,110,1,'2024-09-21'),
(5,12,104,1,'2024-11-03'),
(6,5,117,1,'2024-12-15'),

(7,18,102,2,'2025-01-08'),
(8,7,108,1,'2025-02-14'),
(9,2,111,1,'2025-03-19'),
(10,20,120,1,'2025-04-27'),
(11,9,115,2,'2025-05-05'),
(12,4,113,1,'2025-06-11'),
(13,11,101,1,'2025-07-23'),
(14,6,118,2,'2025-08-02'),
(15,14,109,1,'2025-08-29'),
(16,3,107,1,'2025-09-10'),
(17,17,116,3,'2025-09-26'),
(18,10,112,1,'2025-10-08'),
(19,1,120,1,'2025-10-30'),
(20,8,119,1,'2025-11-15'),
(21,13,105,1,'2025-11-28'),
(22,19,103,2,'2025-12-03'),
(23,16,114,1,'2025-12-11'),
(24,2,101,1,'2025-12-22'),

(25,7,117,1,'2026-01-03'),
(26,5,102,1,'2026-01-09'),
(27,12,108,1,'2026-01-15'),
(28,20,113,1,'2026-01-21'),
(29,9,104,2,'2026-01-29'),
(30,4,118,1,'2026-02-02'),
(31,18,111,2,'2026-02-05'),
(32,6,120,1,'2026-02-08'),
(33,3,106,1,'2026-02-10'),
(34,15,109,1,'2026-02-12'),
(35,10,101,1,'2026-02-13'),
(36,17,102,2,'2026-02-14'),
(37,11,117,1,'2026-02-15'),
(38,1,112,1,'2025-04-06'),
(39,14,105,1,'2025-06-19'),
(40,8,118,2,'2025-08-22');
SELECT *FROM customers;
SELECT c.customersname,
 p.productname,
 o.quantity
FROM customers c
JOIN orders o
ON c.customersid = o.customersid
JOIN products p
ON o.productid = p.productid;

SELECT customersid,
count(*) AS totalorders
FROM orders
GROUP BY customersid
ORDER BY customersid;

SELECT SUM(quantity)
FROM orders;

SELECT AVG(price)
FROM products;

SELECT SUM(p.price * o.quantity) AS
Totalsales
FROM orders o
JOIN products p
ON o.productid = p.productid;













