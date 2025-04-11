DROP DATABASE techzone;

CREATE DATABASE techzone;

\c techzone;

CREATE TABLE empresas(
    id serial PRIMARY KEY,
    nombre CHAR(50),
    nit_empresa CHAR(10)
);

CREATE TABLE pais(
    id serial PRIMARY KEY,
    nombre CHAR(50)
);

CREATE TABLE ciudad(
    id serial PRIMARY KEY,
    nombre CHAR(50),
    id_pais INTEGER,
    FOREIGN KEY (id_pais) REFERENCES pais(id)
);

CREATE TABLE region(
    id serial PRIMARY KEY,
    nombre CHAR(50),
    id_ciudad INTEGER,
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id)
);

CREATE TABLE proveedores(
    id serial PRIMARY KEY,
    nombre CHAR(50),
    telefono CHAR(15),
    email CHAR(50)
);

CREATE TABLE categoria(
    id serial PRIMARY KEY,
    nombre CHAR(50)
);

CREATE TABLE productos(
    id serial PRIMARY KEY,
    nombre CHAR(50),
    precio NUMERIC(10,2),
    stock INTEGER,
    id_categoria INTEGER,
    id_proveedor INTEGER,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id)
);

CREATE TABLE clientes(
    id serial PRIMARY KEY,
    nombre CHAR(50),
    telefono CHAR(20),
    email CHAR(50)
);

CREATE TABLE ventas(
    id serial PRIMARY KEY,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE detalle_venta(
    id serial PRIMARY KEY,
    id_venta INTEGER,
    id_producto INTEGER,
    cantidad INTEGER,
    precio_unitario NUMERIC(10,2),
    FOREIGN KEY (id_venta) REFERENCES ventas(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

