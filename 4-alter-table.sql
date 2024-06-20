-- Alterar tablas
USE metro_cdmx;

ALTER TABLE `trenes` ADD CONSTRAINT `trenes_line_id_foreign` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`);