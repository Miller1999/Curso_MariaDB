USE metro_cdmx;

CREATE TABLE IF NOT EXISTS `ubicaciones` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ubicacion` POINT NOT NULL,
  `estacion_id` BIGINT(20) UNSIGNED NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  CONSTRAINT `ubicaciones_estacion_id_foreign` FOREIGN KEY (`estacion_id`) REFERENCES `estaciones` (`id`)
) DEFAULT CHARSET = utf8mb4;