--liquibase formatted sql
-- Este archivo es para demostrar operación de eliminación
-- Las sentencias están comentadas para no borrar datos automáticamente

--changeset feller2006:19
-- DELETE FROM detalle_factura WHERE factura_id = 2;
-- DELETE FROM factura WHERE id = 2;

--rollback INSERT INTO factura (usuario_id) VALUES (2);
