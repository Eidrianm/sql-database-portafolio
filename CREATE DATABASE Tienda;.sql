CREATE DATABASE Tienda; 
USE Tienda;
CREATE TABLE `usuarios`(`id_usuario` INT NOT NULL AUTO_INCREMENT, `nombre_usuario` VARCHAR(45) NOT NULL, `apellido` VARCHAR(45) NOT NULL, `email` VARCHAR(45) UNIQUE NOT NULL , PRIMARY KEY (`id_usuario`));
CREATE TABLE `productos`(`id_producto` INT NOT NULL AUTO_INCREMENT, `nombre_producto` VARCHAR(100) NOT NULL, `precio` DECIMAL(10,2) NOT NULL, `descripcion` VARCHAR(255) NOT NULL, PRIMARY KEY (`id_producto`));
CREATE TABLE `compras`(`id_compra` INT NOT NULL AUTO_INCREMENT, `id_usuario` INT NOT NULL, `id_producto` INT NOT NULL, `fecha` DEFAULT CURRENT_DATE, PRIMARY KEY (`id_compra`), FOREIGN KEY (`id_usuario`) REFERENCES `usuarios`(`id_usuario`) ON DELETE CASCADE , FOREIGN KEY (`id_producto`) REFERENCES `productos`(`id_producto`) ON DELETE CASCADE);

-- Insert test data
INSERT INTO `usuarios` (`nombre_usuario`, `apellido`, `email`) VALUES 
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Alice', 'Johnson', 'alice.johnson@example.com');

INSERT INTO `productos` (`nombre_producto`, `precio`, `descripcion`) VALUES 
('Laptop', 999.99, 'High performance laptop'),
('Smartphone', 499.99, 'Latest model smartphone'),
('Headphones', 199.99, 'Noise-cancelling headphones');

INSERT INTO `compras` (`id_usuario`, `id_producto`, `fecha`) VALUES 
(1, 1, '2023-01-01'),
(2, 2, '2023-02-01'),
(3, 3, '2023-03-01');


