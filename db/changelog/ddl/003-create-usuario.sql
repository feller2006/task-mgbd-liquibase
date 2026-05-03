--liquibase formatted sql
--changeset feller2006:3
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    persona_id INT UNIQUE NOT NULL,
    rol_id INT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
--changeset feller2006:4
ALTER TABLE usuario ADD CONSTRAINT fk_usuario_persona
FOREIGN KEY (persona_id) REFERENCES persona(id) ON DELETE RESTRICT;
--changeset feller2006:5
ALTER TABLE usuario ADD CONSTRAINT fk_usuario_rol
FOREIGN KEY (rol_id) REFERENCES rol(id) ON DELETE RESTRICT;