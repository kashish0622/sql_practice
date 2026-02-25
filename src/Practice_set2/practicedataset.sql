CREATE DATABASE EcommerceDB;
USE EcommerceDB;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price > 0)
);

CREATE TABLE Order_Details (
    order_id INT,
    product_id INT,
    quantity INT NOT NULL CHECK (quantity > 0),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
        ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
        ON DELETE CASCADE
);

INSERT INTO Customers (name, email)
VALUES 
('Rahul Sharma', 'rahul@gmail.com'),
('Priya Singh', 'priya@gmail.com');

INSERT INTO Products (product_name, price)
VALUES 
('Laptop', 55000.00),
('Headphones', 2000.00),
('Mouse', 800.00);

INSERT INTO Orders (customer_id, order_date, amount)
VALUES 
(1, '2026-02-25', 57000.00),
(2, '2026-02-24', 2000.00);

INSERT INTO Order_Details (order_id, product_id, quantity)
VALUES
(1, 1, 1), 
(1, 3, 1),
(2, 2, 1);  

SELECT * FROM Products 
WHERE product_id NOT IN ( SELECT product_id FROM Order_Details);