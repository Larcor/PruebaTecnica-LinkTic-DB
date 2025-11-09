# Prueba Técnica de Base de Datos

Este repositorio contiene los scripts SQL para la prueba técnica de la capa de base de datos (DB), cuyo objetivo es validar la gestión de productos, categorías e inventario.


## 🛠️ Requisitos y Setup

* **Motor de DB:** MySQL.

| Archivo | Contenido |
| :--- | :--- |
| `Creacion_DB.sql` | Crea la base de datos, las tablas y carga los datos iniciales de la prueba. **(Debe ejecutarse primero)** |
| `ConsultaSimple_Select.sql` | Consulta simple SELECT (Verificar que se pueda consultar todos los produtos de la tienda) |
| `ConsultaSumple_Update.sql` | Consulta simple - UPDATE (verifica que se pueda actualizar la información de un producto) |
| `ConsultaSimple_Delete.sql` | Consulta simple DELETE (Verificar que se pueda eliminar el producto) |
| `Consulta_Join.sql` | Consulta JOIN (Verificamos que se puedan obtener los productos junto a su categoria) |
| `Creacion_Trigger.sql` | Creación del Trigger (Verificar que se active un trigger al insertar un nuevo producto en la tabla products para mantener actualizado el inventario de la tabla inventory) |
| `Creacion_ProcedimientoAlmacenado.sql` | Creación del STOCKED PROCEDURE |

---
