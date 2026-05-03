--liquibase formatted sql
--changeset feller2006:12
INSERT INTO rol (nombre, descripcion) VALUES
('ADMIN', 'Administrador'),
('CLIENTE', 'Cliente regular'),
('VENDEDOR', 'Vendedor');

--changeset feller2006:13
INSERT INTO persona (nombre, apellido, cedula, fecha_nacimiento) VALUES
('Ana', 'Martínez', '12345678', '1990-05-15'),
('Luis', 'Gómez', '87654321', '1985-10-20'),
('Carla', 'Ríos', '11223344', '1995-02-10');

--changeset feller2006:14
INSERT INTO usuario (username, email, password_hash, persona_id, rol_id) VALUES
('amartinez', 'ana@mail.com', 'hash123', 1, 1),
('lgomez', 'luis@mail.com', 'hash456', 2, 2),
('crios', 'carla@mail.com', 'hash789', 3, 3);

--changeset feller2006:15
INSERT INTO producto (codigo, nombre, precio, stock) VALUES
('P001', 'Laptop', 750.00, 10),
('P002', 'Mouse', 25.50, 50),
('P003', 'Teclado', 45.00, 30);
