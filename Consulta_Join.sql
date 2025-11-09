-- Consulta JOIN (Verificamos que se puedan obtener los productos junto a su categoria)

SELECT
    p.id AS ProductID,
    p.name AS ProductName,
    p.price AS Price,
    c.name AS CategoryName
FROM
    Products p
INNER JOIN
    Categories c ON p.category_id = c.id; -- Unimos donde el ID de la categoría coincida