USE metro_cdmx;

DROP PROCEDURE IF EXISTS get_line_stations;

DELIMITER //
CREATE PROCEDURE get_line_stations(
  IN line_name VARCHAR(50)
)
BEGIN
  -- Esta es una forma de guardar valores de una consulta dentro de una variable
  DECLARE line_id BIGINT(20);
  
  SELECT id
  INTO line_id
  FROM lineas
  WHERE name = line_name
  COLLATE utf8mb4_unicode_ci;

  -- Esta es otra forma de guardar valores
  -- estas son las prepared statements, de esta manera escribimos toda nuestra consulta en un solo texto
  SET @sql = CONCAT("
    SELECT
      lines_stations.id AS relation_id,
      lineas.name AS line_name,
      estaciones.name AS station_name
    FROM lines_stations
    INNER JOIN estaciones
    ON estaciones.id = lines_stations.station_id
    INNER JOIN lineas
    ON lineas.id = lines_stations.line_id
    WHERE lines_stations.line_id = ", line_id);
-- Con esto traducimos de texto a sql
PREPARE stmt FROM @sql;
-- Ejecutamos
EXECUTE stmt;
-- Borramos de memoria
DEALLOCATE PREPARE stmt;

END //

DELIMITER ;