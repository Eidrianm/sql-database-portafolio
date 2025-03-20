CREATE DATABASE Tienda; 
USE Tienda;
CREATE TABLE `usuarios`(
    `id_usuario` INT NOT NULL AUTO_INCREMENT,
    `nombre_usuario` VARCHAR(45) NOT NULL,
    `apellido` VARCHAR(45) NOT NULL, 
    `email` VARCHAR(45) UNIQUE NOT NULL , 
    PRIMARY KEY (`id_usuario`));
CREATE TABLE `productos`(
    `id_producto` INT NOT NULL AUTO_INCREMENT, 
    `nombre_producto` VARCHAR(100) NOT NULL, 
    `precio` DECIMAL(10,2) NOT NULL, 
    `descripcion` VARCHAR(255) NOT NULL, 
    PRIMARY KEY (`id_producto`));
CREATE TABLE `compras`(
    `id_compra` INT NOT NULL AUTO_INCREMENT, 
    `id_usuario` INT NOT NULL, 
    `id_producto` INT NOT NULL, 
    `fecha`  DATE DEFAULT CURRENT_DATE, 
    PRIMARY KEY (`id_compra`), 
    FOREIGN KEY (`id_usuario`) REFERENCES `usuarios`(`id_usuario`) ON DELETE CASCADE , 
    FOREIGN KEY (`id_producto`) REFERENCES `productos`(`id_producto`) ON DELETE CASCADE);

-- Insert test data
INSERT INTO `usuarios` (`nombre_usuario`, `apellido`, `email`) VALUES 
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Alice', 'Johnson', 'alice.johnson@example.com'),
('Bob', 'Brown', 'bob.brown@example.com'),
('Charlie', 'Davis', 'charlie.davis@example.com'),
('David', 'Evans', 'david.evans@example.com'),
('Eve', 'Foster', 'eve.foster@example.com'),
('Frank', 'Green', 'frank.green@example.com'),
('Grace', 'Harris', 'grace.harris@example.com'),
('Hank', 'Iverson', 'hank.iverson@example.com');

INSERT INTO `productos` (`nombre_producto`, `precio`, `descripcion`) VALUES 
('Laptop', 999.99, 'High performance laptop'),
('Smartphone', 499.99, 'Latest model smartphone'),
('Headphones', 199.99, 'Noise-cancelling headphones'),
('Monitor', 299.99, '4K Ultra HD monitor'),
('Keyboard', 49.99, 'Mechanical keyboard'),
('Mouse', 29.99, 'Wireless mouse'),
('Printer', 149.99, 'All-in-one printer'),
('Tablet', 399.99, '10-inch tablet'),
('Camera', 599.99, 'Digital SLR camera'),
('Speaker', 99.99, 'Bluetooth speaker');

INSERT INTO `compras` (`id_usuario`, `id_producto`, `fecha`) VALUES 
(1, 1, '2023-01-01'),
(2, 2, '2023-02-01'),
(3, 3, '2023-03-01'),
(4, 4, '2023-04-01'),
(5, 5, '2023-05-01'),
(6, 6, '2023-06-01'),
(7, 7, '2023-07-01'),
(8, 8, '2023-08-01'),
(9, 9, '2023-09-01'),
(10, 10, '2023-10-01'),
(1, 2, '2023-01-15'),
(2, 3, '2023-02-15'),
(3, 4, '2023-03-15'),
(4, 5, '2023-04-15'),
(5, 6, '2023-05-15'),
(6, 7, '2023-06-15'),
(7, 8, '2023-07-15'),
(8, 9, '2023-08-15'),
(9, 10, '2023-09-15'),
(10, 1, '2023-10-15');



