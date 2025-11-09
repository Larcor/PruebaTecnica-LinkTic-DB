-- 1. Creación del STOCKED PROCEDURE
DELIMITER $$

CREATE PROCEDURE GetProductStockInfo (
    IN p_product_id INT -- Parámetro de entrada: el ID del producto
)
BEGIN
    -- Realiza un JOIN entre Products e Inventory para obtener el nombre y el stock.
    SELECT
        p.name AS ProductName,
        i.quantity_available AS QuantityAvailable
    FROM
        Products p
    JOIN
        Inventory i ON p.id = i.product_id
    WHERE
        p.id = p_product_id; -- Filtra por el ID proporcionado
END$$

DELIMITER ;



-- Ejecutamos el Stored Procedure, pasando el ID del producto (Ejemplo: ID 1)
CALL GetProductStockInfo(1);