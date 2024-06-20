USE metro_cdmx;

CREATE TABLE lines_stations (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `line_id` BIGINT(20) UNSIGNED NOT NULL,
  `station_id` BIGINT(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  CONSTRAINT `lines_stations_line_id_foreign` FOREIGN KEY (`line_id`) REFERENCES `lineas` (`id`),
  CONSTRAINT `lines_stations_station_id_foreign` FOREIGN KEY (`station_id`) REFERENCES `estaciones` (`id`)
) DEFAULT CHARSET = utf8mb4;