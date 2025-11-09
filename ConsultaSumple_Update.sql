-- Consulta simple - UPDATE (verifica que se pueda actualizar la información de un producto)

UPDATE Products
SET price = 849.99
WHERE id = 1;

-- Se verifica el update

SELECT id, name, price
FROM Products
WHERE id = 1;