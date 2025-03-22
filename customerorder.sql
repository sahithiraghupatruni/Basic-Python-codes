Create database CustomerOrderDB;
use CustomerOrderDB;
Create table Customers(
customer_id INT PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
country VARCHAR(50)
);
Create table Orders(
order_id INT PRIMARY KEY,
customer_id INT,
product VARCHAR(100),
price DECIMAL(10,2),
status VARCHAR(50),
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);
SHOW TABLES;
INSERT INTO Customers (customer_id, name, email, country) VALUES
(1, 'Alice Johnson', 'alice@email.com', 'USA'),
(2, 'Bob Smith', 'bob@email.com', 'India'),
(3, 'Charlie Brown', 'charlie@email.com', 'UK'),
(4, 'David Miller', 'david@email.com', 'Canada');
INSERT INTO Orders (order_id, customer_id, product, price, status) VALUES
(101, 1, 'Laptop', 750.00, 'Shipped'),
(102, 2, 'Smartphone', 500.00, 'Processing'),
(103, 3, 'Tablet', 300.00, 'Delivered'),
(104, 4, 'Smartwatch', 200.00, 'Pending');
select * from customers;
select * from orders;
UPDATE Orders 
SET status = 'Shipped' 
WHERE order_id = 104;
SELECT * FROM Orders;
DELETE FROM Orders WHERE customer_id = 2;
DELETE FROM Customers WHERE customer_id = 2;
SELECT * FROM Customers;
SELECT Orders.order_id, Customers.name, Orders.product, Orders.price, Orders.status
FROM Orders
INNER JOIN Customers ON Orders.customer_id = Customers.customer_id;
SELECT COUNT(*) AS PendingOrders FROM Orders WHERE status = 'Pending';
