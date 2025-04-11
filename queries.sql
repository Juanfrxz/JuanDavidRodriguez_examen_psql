--  1. Listar los productos con stock menor a 5 unidades.

SELECT id, nombre, stock
FROM productos
WHERE stock < 5;

-- 2. Calcular ventas totales de un mes específico.



-- 3. Obtener el cliente con más compras realizadas.

SELECT 
    c.id,
    c.nombre,
    COUNT(v.id) AS cantidad_compras
FROM clientes c 
JOIN ventas v ON c.id = v.id_cliente
GROUP BY c.id, c.nombre
ORDER BY cantidad_compras DESC 
LIMIT 1;

-- 4. Listar los 5 productos más vendidos.

SELECT 
    p.id,
    p.nombre,
    SUM(dv.cantidad) AS total_vendido
FROM productos p 
JOIN detalle_venta dv ON p.id = dv.id_producto
GROUP BY p.id, p.nombre 
ORDER BY total_vendido DESC
LIMIT 5;  

-- 5.  Consultar ventas realizadas en un rango de fechas de tres Días y un Mes.



-- 6. Identificar clientes que no han comprado en los últimos 6 meses.

SELECT 
    c.id,
    c.nombre
FROM clientes c 
LEFT JOIN ventas v ON c.id = v.id_cliente
    AND v.fecha >= CURRENT_DATE - INTERVAL '6 months'
WHERE v.id IS NULL;

