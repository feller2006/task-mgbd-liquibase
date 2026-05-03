--liquibase formatted sql
--changeset feller2006:7
CREATE TABLE factura (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(12,2) DEFAULT 0
);
--changeset feller2006:8
ALTER TABLE factura ADD CONSTRAINT fk_factura_usuario
FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE;