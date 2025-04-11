DROP DATABASE IF EXISTS techzone;

CREATE DATABASE techzone;

\c techzone;

CREATE TABLE pais (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    codigo_iso VARCHAR(3) UNIQUE
);

CREATE TABLE ciudad (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_pais INTEGER NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES pais(id) ON DELETE RESTRICT,
    UNIQUE(nombre, id_pais)
);

CREATE TABLE region (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_ciudad INTEGER NOT NULL,
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id) ON DELETE RESTRICT,
    UNIQUE(nombre, id_ciudad)
);

CREATE TABLE empresas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nit_empresa VARCHAR(20) NOT NULL UNIQUE,
    direccion TEXT,
    id_region INTEGER,
    telefono VARCHAR(20),
    email VARCHAR(100),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_region) REFERENCES region(id)
);

CREATE TABLE categoria (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT
);

CREATE TABLE proveedores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nit VARCHAR(20) UNIQUE,
    direccion TEXT,
    id_region INTEGER,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_region) REFERENCES region(id)
);

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(10,2) NOT NULL CHECK (precio > 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    id_categoria INTEGER NOT NULL,
    id_proveedor INTEGER NOT NULL,
    fecha_ingreso TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id)
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nit VARCHAR(20) UNIQUE,
    direccion TEXT,
    id_region INTEGER,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_region) REFERENCES region(id) 
);

CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_cliente INTEGER NOT NULL,
    total NUMERIC(10,2) NOT NULL DEFAULT 0,
    estado VARCHAR(20) DEFAULT 'completada' CHECK (estado IN ('completada', 'cancelada', 'pendiente')),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id) 
);

CREATE TABLE detalle_venta (
    id SERIAL PRIMARY KEY,
    id_venta INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    precio_unitario NUMERIC(10,2) NOT NULL CHECK (precio_unitario > 0),
    subtotal NUMERIC(10,2) NOT NULL CHECK (subtotal > 0),
    FOREIGN KEY (id_venta) REFERENCES ventas(id) ,
    FOREIGN KEY (id_producto) REFERENCES productos(id) 
);

-- Procedimiento para validar la existencia de un cliente
