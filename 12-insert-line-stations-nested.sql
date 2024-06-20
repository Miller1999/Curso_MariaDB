use metro_cdmx;

INSERT INTO
  lines_stations (line_id, station_id)
VALUES
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.name = "Linea 9"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.name = "Lázaro Cárdenas"
    )
  );