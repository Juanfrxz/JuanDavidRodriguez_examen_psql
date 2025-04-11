-- Insertar países
INSERT INTO pais (nombre, codigo_iso) VALUES
('Colombia', 'COL'),
('Estados Unidos', 'USA'),
('México', 'MEX'),
('España', 'ESP'),
('China', 'CHN');

-- Insertar ciudades
INSERT INTO ciudad (nombre, id_pais) VALUES
('Bogotá', 1),
('Medellín', 1),
('Cali', 1),
('New York', 2),
('Los Ángeles', 2),
('Ciudad de México', 3),
('Guadalajara', 3),
('Madrid', 4),
('Barcelona', 4),
('Shanghái', 5),
('Beijing', 5);

-- Insertar regiones
INSERT INTO region (nombre, id_ciudad) VALUES
('Chapinero', 1),
('El Poblado', 2),
('San Fernando', 3),
('Manhattan', 4),
('Hollywood', 5),
('Polanco', 6),
('Providencia', 7),
('Salamanca', 8),
('Gracia', 9),
('Pudong', 10),
('Chaoyang', 11);

-- Insertar categorías
INSERT INTO categoria (nombre, descripcion) VALUES
('Laptops', 'Computadoras portátiles de diferentes marcas y especificaciones'),
('Smartphones', 'Teléfonos inteligentes y dispositivos móviles'),
('Tablets', 'Dispositivos tablet de diferentes marcas'),
('Componentes PC', 'Partes y piezas para computadoras de escritorio'),
('Periféricos', 'Dispositivos de entrada y salida'),
('Audio', 'Equipos de sonido y accesorios'),
('Redes', 'Equipos de networking y conectividad'),
('Almacenamiento', 'Discos duros y unidades de estado sólido'),
('Monitores', 'Pantallas y displays'),
('Gaming', 'Equipos y accesorios para videojuegos'),
('Smart Home', 'Dispositivos para hogar inteligente'),
('Cámaras', 'Equipos de fotografía y video'),
('Impresión', 'Impresoras y suministros'),
('Software', 'Programas y aplicaciones'),
('Accesorios', 'Complementos y accesorios varios');

-- Insertar proveedores
INSERT INTO proveedores (nombre, nit, direccion, id_region, telefono, email) VALUES
('TechDistribuciones S.A.', '900123456-7', 'Calle 100 # 15-20', 1, '6012345678', 'contacto@techdist.com'),
('ElectroTech Colombia', '900234567-8', 'Carrera 45 # 20-30', 2, '6023456789', 'ventas@electrotech.co'),
('CompuMundo S.A.S', '900345678-9', 'Avenida 30 # 45-60', 3, '6034567890', 'info@compumundo.com'),
('Digital Solutions', '900456789-0', 'Calle 80 # 10-15', 4, '6045678901', 'soporte@digitalsol.com'),
('TechImport S.A.', '900567890-1', 'Carrera 7 # 40-50', 5, '6056789012', 'import@techimport.com'),
('PC Components', '900678901-2', 'Avenida Boyacá # 15-25', 6, '6067890123', 'ventas@pccomponents.com'),
('Gadget Pro', '900789012-3', 'Calle 72 # 10-20', 7, '6078901234', 'contacto@gadgetpro.com'),
('TechZone Distributors', '900890123-4', 'Carrera 15 # 30-40', 8, '6089012345', 'distribucion@techzone.com'),
('Digital Warehouse', '900901234-5', 'Avenida 68 # 20-30', 9, '6090123456', 'almacen@digitalware.com'),
('Tech Solutions', '901012345-6', 'Calle 100 # 45-50', 10, '6101234567', 'soluciones@techsolutions.com'),
('PC Express', '901123456-7', 'Carrera 50 # 25-35', 11, '6112345678', 'ventas@pcexpress.com'),
('Gaming Tech', '901234567-8', 'Avenida 19 # 15-25', 1, '6123456789', 'gaming@gamingtech.com'),
('Audio Pro', '901345678-9', 'Calle 85 # 10-20', 2, '6134567890', 'audio@audiopro.com'),
('Network Solutions', '901456789-0', 'Carrera 30 # 40-50', 3, '6145678901', 'redes@networksol.com'),
('Storage Tech', '901567890-1', 'Avenida 26 # 15-25', 4, '6156789012', 'almacenamiento@storagetech.com');

-- Insertar productos
INSERT INTO productos (nombre, descripcion, precio, stock, id_categoria, id_proveedor) VALUES
('Laptop HP Victus 15', 'Laptop gaming con procesador Intel i7, 16GB RAM, 512GB SSD', 3400000, 8, 1, 1),
('MacBook Air M2', 'Laptop ultradelgada con chip M2, 8GB RAM, 256GB SSD', 4500000, 5, 1, 2),
('Dell XPS 13', 'Laptop premium con pantalla InfinityEdge, 16GB RAM, 1TB SSD', 5200000, 6, 3, 3),
('Samsung Galaxy S23', 'Smartphone con cámara de 50MP, 8GB RAM, 256GB almacenamiento', 3400000, 12, 2, 4),
('iPhone 14 Pro', 'Smartphone con Dynamic Island, 6GB RAM, 128GB almacenamiento', 4500000, 10, 2, 5),
('Huawei MatePad Pro', 'Tablet con pantalla OLED, 8GB RAM, 256GB almacenamiento', 2800000, 7, 3, 6),
('iPad Air 5', 'Tablet con chip M1, 8GB RAM, 64GB almacenamiento', 3200000, 9, 3, 7),
('RTX 4080 Gaming OC', 'Tarjeta gráfica para gaming de alto rendimiento', 4500000, 4, 4, 8),
('AMD Ryzen 9 7950X', 'Procesador de 16 núcleos para gaming y creación de contenido', 2800000, 6, 4, 9),
('Logitech MX Master 3S', 'Mouse inalámbrico premium para productividad', 450000, 15, 5, 10),
('Keychron K8', 'Teclado mecánico inalámbrico con retroiluminación RGB', 650000, 8, 5, 11),
('Sony WH-1000XM5', 'Audífonos inalámbricos con cancelación de ruido', 1500000, 10, 6, 12),
('TP-Link Archer AX6000', 'Router WiFi 6 de alto rendimiento', 1200000, 6, 7, 13),
('Samsung 980 Pro 1TB', 'SSD NVMe de alta velocidad para gaming', 800000, 12, 8, 14),
('LG UltraGear 27GN950', 'Monitor gaming 4K 144Hz con HDR', 2500000, 5, 9, 15);

-- Insertar clientes
INSERT INTO clientes (nombre, nit, direccion, id_region, telefono, email) VALUES
('Juan Pérez', '123456789-0', 'Calle 100 # 15-20', 1, '3001234567', 'juan.perez@email.com'),
('María González', '234567890-1', 'Carrera 45 # 20-30', 2, '3002345678', 'maria.gonzalez@email.com'),
('Carlos Rodríguez', '345678901-2', 'Avenida 30 # 45-60', 3, '3003456789', 'carlos.rodriguez@email.com'),
('Ana Martínez', '456789012-3', 'Calle 80 # 10-15', 4, '3004567890', 'ana.martinez@email.com'),
('Luis Sánchez', '567890123-4', 'Carrera 7 # 40-50', 5, '3005678901', 'luis.sanchez@email.com'),
('Laura Díaz', '678901234-5', 'Avenida Boyacá # 15-25', 6, '3006789012', 'laura.diaz@email.com'),
('Pedro Gómez', '789012345-6', 'Calle 72 # 10-20', 7, '3007890123', 'pedro.gomez@email.com'),
('Sofía López', '890123456-7', 'Carrera 15 # 30-40', 8, '3008901234', 'sofia.lopez@email.com'),
('Diego Ramírez', '901234567-8', 'Avenida 68 # 20-30', 9, '3009012345', 'diego.ramirez@email.com'),
('Valentina Torres', '012345678-9', 'Calle 100 # 45-50', 10, '3010123456', 'valentina.torres@email.com'),
('Andrés Herrera', '123456789-1', 'Carrera 50 # 25-35', 11, '3011234567', 'andres.herrera@email.com'),
('Camila Vargas', '234567890-2', 'Avenida 19 # 15-25', 1, '3012345678', 'camila.vargas@email.com'),
('Javier Castro', '345678901-3', 'Calle 85 # 10-20', 2, '3013456789', 'javier.castro@email.com'),
('Daniela Ruiz', '456789012-4', 'Carrera 30 # 40-50', 3, '3014567890', 'daniela.ruiz@email.com'),
('Miguel Ángel Silva', '567890123-5', 'Avenida 26 # 15-25', 4, '3015678901', 'miguel.silva@email.com');

-- Insertar ventas de ejemplo
INSERT INTO ventas (id_cliente, fecha, total, estado) VALUES
(1, '2024-03-01 10:30:00', 4500000, 'completada'),
(2, '2024-03-02 11:15:00', 3400000, 'completada'),
(3, '2024-03-03 14:20:00', 2800000, 'completada'),
(4, '2024-03-04 16:45:00', 5200000, 'completada'),
(5, '2024-03-05 09:30:00', 1500000, 'completada'),
(6, '2024-03-06 13:15:00', 800000, 'completada'),
(7, '2024-03-07 15:20:00', 2500000, 'completada'),
(8, '2024-03-08 10:45:00', 450000, 'completada'),
(9, '2024-03-09 11:30:00', 650000, 'completada'),
(10, '2024-03-10 14:15:00', 1200000, 'completada'),
(11, '2024-03-11 16:20:00', 2800000, 'completada'),
(12, '2024-03-12 09:45:00', 4500000, 'completada'),
(13, '2024-03-13 10:30:00', 3200000, 'completada'),
(14, '2024-03-14 13:15:00', 3400000, 'completada'),
(15, '2024-03-15 15:20:00', 2800000, 'completada');

-- Insertar detalles de venta
INSERT INTO detalle_venta (id_venta, id_producto, cantidad, precio_unitario, subtotal) VALUES
(1, 2, 1, 4500000, 4500000),
(2, 4, 1, 3400000, 3400000),
(3, 6, 1, 2800000, 2800000),
(4, 3, 1, 5200000, 5200000),
(5, 12, 1, 1500000, 1500000),
(6, 14, 1, 800000, 800000),
(7, 15, 1, 2500000, 2500000),
(8, 10, 1, 450000, 450000),
(9, 11, 1, 650000, 650000),
(10, 13, 1, 1200000, 1200000),
(11, 9, 1, 2800000, 2800000),
(12, 8, 1, 4500000, 4500000),
(13, 7, 1, 3200000, 3200000),
(14, 1, 1, 3400000, 3400000),
(15, 5, 1, 4500000, 4500000);

 

