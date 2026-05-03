--liquibase formatted sql
--changeset feller2006:9
CREATE TABLE detalle_factura (
    id SERIAL PRIMARY KEY,
    factura_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario DECIMAL(12,2) NOT NULL,
    subtotal DECIMAL(12,2) GENERATED ALWAYS AS (cantidad * precio_unitario) STORED
);
--changeset feller2006:10
ALTER TABLE detalle_factura ADD CONSTRAINT fk_detalle_factura
FOREIGN KEY (factura_id) REFERENCES factura(id) ON DELETE CASCADE;
--changeset feller2006:11
ALTER TABLE detalle_factura ADD CONSTRAINT fk_detalle_producto
FOREIGN KEY (producto_id) REFERENCES producto(id) ON DELETE RESTRICT;