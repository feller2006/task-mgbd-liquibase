--liquibase formatted sql
--changeset feller2006:16
INSERT INTO factura (usuario_id) VALUES (1), (2);

--changeset feller2006:17
INSERT INTO detalle_factura (factura_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 750.00),
(1, 2, 2, 25.50),
(2, 3, 1, 45.00);

--changeset feller2006:18
UPDATE factura SET total = (
    SELECT COALESCE(SUM(subtotal), 0) 
    FROM detalle_factura 
    WHERE detalle_factura.factura_id = factura.id
);
