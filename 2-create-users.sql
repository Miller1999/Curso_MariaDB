-- Crear usuarios

CREATE USER 'mife20'@'localhost' IDENTIFIED BY '2011';

-- Eliminar usuarios

DROP USER 'mife20'@'localhost'

-- Dar provilegios
-- Documentacion para observar como dar privilegios

GRANT ALL ON *.* TO 'mife20'@'localhost'; -- -> En este caso todos los privilegios en todo lado

-- Actualizar privilegios de usuarios

FLUSH PRIVILEGES