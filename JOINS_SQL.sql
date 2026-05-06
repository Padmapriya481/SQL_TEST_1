------------------------- CREATUNG THE DATABASE --------------------------
CREATE DATABASE WEESHO;
USE WEESHO;
------------------------- CREATING TABLES CUSTOMER,PRODUCTS,ORDERS ------------------------
CREATE TABLE Customer(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(20),
city VARCHAR(20)
);
------------------------- TABLE PRODUCTS -------------------------------

CREATE TABLE Products(
product_id INT PRIMARY KEY,
product_name VARCHAR(20),
price DECIMAL(10,2)
);
--------------------- TABLE ORDERS --------------------------
CREATE TABLE Orders(
order_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
quantity INT,
FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
FOREIGN KEY(product_id) REFERENCES Products(product_id)
);
------------------------ INSERTING THE VALUES-----------------------
INSERT INTO Customer (customer_id, customer_name, city) VALUES
(1, 'RAJ', 'CHENNAI'),
(2, 'RAVI', 'MADURAI'),
(3, 'SAM', 'VILLUPURAM');

INSERT INTO Products (product_id,product_name,price) VALUES
(101,'AC',40000),
(102,'LAPTOP',45000),
(103,'MOBILE',30000);

INSERT INTO Orders(order_id,customer_id,product_id,quantity) VALUES
(6001,1,101,2),
(6002,2,102,1),
(6003,3,103,3);

SELECT * FROM Customer;
SELECT * FROM Products;
SELECT * FROM Orders;

--------------------- JOINING THE THREE TABLES ----------------------

SELECT 
    Customer.customer_name,
    Products.product_name,
    Orders.quantity
FROM Orders
JOIN Customer
    ON Orders.customer_id = Customer.customer_id
JOIN Products 
    ON Orders.product_id = Products.product_id;

