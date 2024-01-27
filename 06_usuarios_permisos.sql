-- Usuario solo_lectura con permisos de solo lectura
CREATE USER 'solo_lectura'@'localhost' IDENTIFIED BY 'contrasena_l';

-- Conceder permisos de solo lectura en todas las tablas del marketplace_db. No se permite eliminar registros
GRANT SELECT ON marketplace_db.* TO 'solo_lectura'@'localhost';

-- Usuario lectura_insercion_modificacion con permisos de lectura, inserción y modificación
CREATE USER 'lectura_insercion_modificacion'@'localhost' IDENTIFIED BY 'contrasena_lim';

-- Conceder permisos de lectura, inserción y modificación en todas las tablas del marketplace_db. No se permite eliminar registros
GRANT SELECT, INSERT, UPDATE ON marketplace_db.* TO 'lectura_insercion_modificacion'@'localhost';

-- Eliminar la capacidad de eliminar registros para ambos usuarios y que se aplica a nivel global
REVOKE DELETE ON *.* FROM 'solo_lectura'@'localhost';
REVOKE DELETE ON *.* FROM 'lectura_insercion_modificacion'@'localhost'; 