-- CREACIÓN DE LA BASE DE DATOS

CREATE DATABASE IF NOT EXISTS ECommerceDB;
USE ECommerceDB;

-- 2. CREACIÓN DE LAS TABLAS
CREATE TABLE Categories (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Products (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

CREATE TABLE Inventory (
    product_id INT PRIMARY KEY,
    quantity_available INT NOT NULL DEFAULT 0,
    FOREIGN KEY (product_id) REFERENCES Products(id)
);


INSERT INTO Categories (id, name) VALUES
(1, 'Electrónicos'),
(2, 'Ropa'),
(3, 'Hogar');


INSERT INTO Products (id, name, price, category_id) VALUES
(1, 'Laptop Acer', 799.99, 1),
(2, 'Smartphone Samsung', 599.99, 1),
(3, 'Tablet Lenovo', 299.99, 1);


INSERT INTO Inventory (product_id, quantity_available) VALUES
(1, 50),
(2, 120),
(3, 80);

-- VERIFICACIÓN

SELECT * FROM Categories;

SELECT * FROM Products;

SELECT * FROM Inventory;