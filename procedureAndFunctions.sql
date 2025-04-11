-- Procedimiento para validar la existencia de un cliente
CREATE OR REPLACE FUNCTION validar_cliente(p_id_cliente INTEGER)
RETURNS BOOLEAN AS $$
BEGIN
    RETURN EXISTS (
        SELECT 1 FROM clientes WHERE id = p_id_cliente
    );
END;
$$ LANGUAGE plpgsql;

-- Procedimiento para verificar el stock disponible
CREATE OR REPLACE FUNCTION verificar_stock(
    p_id_producto INTEGER,
    p_cantidad INTEGER
) RETURNS BOOLEAN AS $$
DECLARE
    v_stock_disponible INTEGER;
BEGIN
    SELECT stock INTO v_stock_disponible
    FROM productos
    WHERE id = p_id_producto;
    
    RETURN COALESCE(v_stock_disponible, 0) >= p_cantidad;
END;
$$ LANGUAGE plpgsql;