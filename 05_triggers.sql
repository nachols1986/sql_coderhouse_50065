-- Primero, crearemos las tablas de registro user_log y product_log para registrar las acciones realizadas en las tablas de usuarios y productos:

CREATE TABLE IF NOT EXISTS user_log
             (
                          id          INT auto_increment PRIMARY KEY,
                          user_id     INT NOT NULL,
                          action_type VARCHAR(50) NOT NULL,
                          action_date DATE NOT NULL,
                          action_time TIME NOT NULL,
                          user_action VARCHAR(255) NOT NULL
             );

CREATE TABLE IF NOT EXISTS product_log
             (
                          id             INT auto_increment PRIMARY KEY,
                          product_id     INT NOT NULL,
                          action_type    VARCHAR(50) NOT NULL,
                          action_date    DATE NOT NULL,
                          action_time    TIME NOT NULL,
                          product_action VARCHAR(255) NOT NULL
             );

-- Este trigger registrará las inserciones de nuevos usuarios en la tabla user_log.
DELIMITER //
CREATE TRIGGER user_before_insert
  BEFORE
  INSERT
  ON user FOR EACH row begin
  INSERT INTO user_log
              (
                          user_id,
                          action_type,
                          action_date,
                          action_time,
                          user_action
              )
              VALUES
              (
                          new.id,
                          'INSERT',
                          curdate(),
                          curtime(),
                          concat('Nuevo usuario creado: ', new.username)
              );
END //
delimiter ;

-- Este trigger registrará las actualizaciones de usuarios en la tabla user_log.
DELIMITER //
CREATE TRIGGER user_after_update
  after
  UPDATE
  ON user FOR EACH row begin
  INSERT INTO user_log
              (
                          user_id,
                          action_type,
                          action_date,
                          action_time,
                          user_action
              )
              VALUES
              (
                          new.id,
                          'UPDATE',
                          curdate(),
                          curtime(),
                          concat('Usuario actualizado: ', new.username)
              );
END //
delimiter ;

-- Este trigger registrará las actualizaciones de productos en la tabla product_log como se había planeado inicialmente.
DELIMITER //
CREATE TRIGGER product_after_update
  after
  UPDATE
  ON product FOR EACH row begin
  INSERT INTO product_log
              (
                          product_id,
                          action_type,
                          action_date,
                          action_time,
                          product_action
              )
              VALUES
              (
                          new.id,
                          'UPDATE',
                          curdate(),
                          curtime(),
                          concat('Producto actualizado: ', new.name)
              );
END //
delimiter ;
