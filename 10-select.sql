USE metro_cdmx;

-- Seleccionar todo
SELECT
  *
FROM
  `nombre_tabla`;

--Filtrar por columnas
SELECT
  `campos_requeridos`
FROM
  `nombre_tabla`
  --Operaciones matematicas
SELECT
  (2 + 2);

--Renombrar
SELECT
  (2 + 2) AS resultado;

SELECT
  AVG(year) AS year_avg
FROM
  trenes;

-- Juntar tablas
SELECT
  lineas.name,
  trenes.serial_number
FROM
  lineas
  INNER JOIN trenes ON lineas.id = trenes.line_id;