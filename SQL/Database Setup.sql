CREATE DATABASE Dominos_Sales;
GO

USE Dominos_Sales;
GO

CREATE TABLE Dominos_Sales
(
    order_id INT,
    order_date DATE,
    order_time TIME,
    customer_id INT,
    store_id INT,
    city VARCHAR(100),
    pizza_name VARCHAR(150),
    category VARCHAR(50),
    size VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    order_type VARCHAR(50),
    payment_method VARCHAR(50)
);