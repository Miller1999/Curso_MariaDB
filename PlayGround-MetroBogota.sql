-- Tu código aquí 👇
SELECT
  *
FROM
  lineas;

SELECT
  *
FROM
  estaciones;

CREATE TABLE linea_estaciones (
  `linea_id` BIGINT(20) NOT NULL,
  `estacion_id` BIGINT(20) NOT NULL,
  CONSTRAINT `linea_estaciones_linea_id_foreign` FOREIGN KEY (linea_id) REFERENCES lineas (id),
  CONSTRAINT `linea_estaciones_estacion_id_foreign` FOREIGN KEY (estacion_id) REFERENCES estaciones (id)
);

INSERT INTO
  linea_estaciones (linea_id, estacion_id)
VALUES
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 1"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 1"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 1"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 2"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 1"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 3"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 1"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 4"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 1"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 5"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 2"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 6"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 2"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 7"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 2"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 8"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 2"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 9"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 2"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 10"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 3"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 11"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 3"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 12"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 3"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 13"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 3"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 14"
    )
  ),
  (
    (
      SELECT
        lineas.id
      FROM
        lineas
      WHERE
        lineas.nombre = "Linea 3"
    ),
    (
      SELECT
        estaciones.id
      FROM
        estaciones
      WHERE
        estaciones.nombre = "Estacion 15"
    )
  );

SELECT
  *
FROM
  linea_estaciones;