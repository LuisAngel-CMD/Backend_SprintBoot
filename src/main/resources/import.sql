
/* Populate tabla clientes*/

INSERT INTO regiones (id, nombre) VALUES (1, 'Sudamérica');
INSERT INTO regiones (id, nombre) VALUES (2, 'Centroamérica');
INSERT INTO regiones (id, nombre) VALUES (3, 'Norteamérica');
INSERT INTO regiones (id, nombre) VALUES (4, 'Europa');
INSERT INTO regiones (id, nombre) VALUES (5, 'Asia');
INSERT INTO regiones (id, nombre) VALUES (6, 'Africa');
INSERT INTO regiones (id, nombre) VALUES (7, 'Oceanía');

INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (1, 'Andres', 'Guzman', 'profesorbolsadeideas.com', '2018-01-01');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (2, 'María', 'López', 'maria@example.com', '2022-02-12');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (3, 'Laura', 'García', 'laura@example.com', '2019-10-20');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (4, 'Juan', 'Martínez', 'juan@example.com', '2020-06-05');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (5, 'Carlos', 'Sánchez', 'carlos@example.com', '2021-03-15');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (6, 'Ana', 'Díaz', 'ana@example.com', '2023-07-09');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (7, 'Luis', 'Rodríguez', 'luis@example.com', '2023-11-28');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (1, 'Elena', 'Fernández', 'elena@example.com', '2022-09-03');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (2, 'Sofía', 'Hernández', 'sofia@example.com', '2020-04-17');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (3, 'Miguel', 'Ruiz', 'miguel@example.com', '2021-12-30');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (4, 'Diego', 'Hernández', 'diego@example.com', '2022-08-25');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES (5, 'Valeria', 'López', 'valeria@example.com', '2023-05-10');

/* Creamos  algunos usuarios  con sus roles */

INSERT INTO usuarios (username, password, enabled) VALUES ('andres', '', 1);
INSERT INTO usuarios (username, password, enabled) VALUES ('admin','', 1);


INSERT INTO roles (nombre) VALUES ('ROLE_USER');
INSERT INTO roles (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO usuarios_roles (usuarios_id, role_id) VALUES (1, 1);
INSERT INTO usuarios_roles (usuarios_id, role_id) VALUES (2, 2);
INSERT INTO usuarios_roles (usuarios_id, role_id) VALUES (2, 1);












