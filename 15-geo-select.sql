USE metro_cdmx;

-- Calculado en metros esto es harcodeado
SELECT
  ST_Distance_Sphere (
    POINT (-99.14912224, 19.42729875),
    POINT (-99.13303971, 19.42543703)
  ) AS distance;

-- Calculado en kilometros esto es harcodeado
SELECT
  ROUND(
    ST_Distance_Sphere (
      POINT (-99.14912224, 19.42729875),
      POINT (-99.13303971, 19.42543703)
    ) / 1000,
    2
  ) AS distance;

-- Calculado en metros por medio de consultas anidadas
SELECT
  ROUND(
    ST_Distance_Sphere (
      (
        SELECT
          ubicacion
        FROM
          ubicaciones
        WHERE
          estacion_id = (
            SELECT
              id
            FROM
              estaciones
            WHERE
              name = "Balderas" -- Esto realmente es constitucion
          )
      ),
      (
        SELECT
          ubicacion
        FROM
          ubicaciones
        WHERE
          estacion_id = (
            SELECT
              id
            FROM
              estaciones
            WHERE
              name = "Centro Médico" -- Esto es realmente plaza Aragon
          )
      )
    ),
    3
  ) / 1000 as Distancia;

-- Calculado en kilomentros con join
SELECT
  ST_Distance_Sphere (
    (
      SELECT
        ubicaciones.ubicacion
      FROM
        ubicaciones
        INNER JOIN estaciones ON estaciones.id = ubicaciones.estacion_id
      WHERE
        estaciones.name = "Balderas"
    ),
    (
      SELECT
        ubicaciones.ubicacion
      FROM
        ubicaciones
        INNER JOIN estaciones ON estaciones.id = ubicaciones.estacion_id
      WHERE
        estaciones.name = "Centro Médico"
    )
  ) / 1000 AS `Distancia en km`;