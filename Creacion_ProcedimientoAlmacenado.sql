-- 1. Creación del STOCKED PROCEDURE
DELIMITER $$

CREATE PROCEDURE GetProductStockInfo (
    IN p_product_id INT
)
BEGIN
    SELECT
        p.name AS ProductName,
        i.quantity_available AS QuantityAvailable
    FROM
        Products p
    JOIN
        Inventory i ON p.id = i.product_id
    WHERE
        p.id = p_product_id;
END$$

DELIMITER ;



-- Ejecutamos el Stored Procedure, pasando el ID del producto (ID 1)
CALL GetProductStockInfo(1);
