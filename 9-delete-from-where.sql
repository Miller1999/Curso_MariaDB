-- Borrar todos los registros de una tabla -> esta no restablece los id
DELETE FROM `nombre_tabla`;

USE metro_cdmx;

-- Borrar un registro dada una condicion
DELETE FROM `tabla`
WHERE
  `llave` = `condicion`;

-- Otra forma de borrar los registros -> esta si reestablece los id
TRUNCATE TABLE `nombre_tabla`;

-- ESTO SI ELIMINA LA TABLA
DROP TABLE `nombre_tabla`