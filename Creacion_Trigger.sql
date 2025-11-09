-- Creación del Trigger (Verificar que se active un trigger al insertar un nuevo producto en la tabla products para mantener actualizado el inventario de la tabla inventory)

DELIMITER $$

CREATE TRIGGER trg_InsertInventory
AFTER INSERT ON Products
FOR EACH ROW
BEGIN
    -- Inserta una nueva fila en Inventory usando el ID del producto recién insertado (NEW.id)
    -- Asignamos una cantidad inicial de 50.
    INSERT INTO Inventory (product_id, quantity_available)
    VALUES (NEW.id, 5);
END$$

DELIMITER ;

-- Insertamos un nuevo producto con ID = 4
INSERT INTO Products (id, name, price, category_id)
VALUES (4, 'Smart TV 4K', 1200.00, 1);


-- Verificamos la funcionalidad del trigger

SELECT
    p.name AS ProductName,
    i.quantity_available AS InitialStock
FROM Products p
JOIN Inventory i ON p.id = i.product_id
WHERE p.id = 4;