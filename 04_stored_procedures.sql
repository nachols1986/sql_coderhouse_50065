-- 1. Limpiar las reviews de un usuario
-- Este procedimiento acepta como entrada el ID de un usuario y elimina todas sus reseñas de la tabla REVIEW
DELIMITER //
CREATE PROCEDURE
    eliminarresenasporusuario(IN username_param VARCHAR(50))
begin
    DECLARE user_id_param INT;
    -- Obtener el ID del usuario a partir del usernameSELECT id
    INTO   user_id_param
    FROM   user
    WHERE  username = username_param;
  
    -- Eliminar las reseñas asociadas al usuarioDELETE
    FROM   review
    WHERE  user_id = user_id_param;
  
    -- Imprimir mensaje informativo
  SELECT CONCAT('Se eliminaron las reseñas del usuario ', username_param) AS mensaje;
  END //
delimiter ;

-- 2. Procedimiento para agregar productos al carrito de compras
-- Este procedimiento permite a un usuario agregar productos a su carrito de compras. Toma como entrada el ID del usuario, el ID del producto y la cantidad a agregar. Luego, inserta una fila en la tabla shoppingcart para registrar el producto en el carrito del usuario.DELIMITER //
CREATE PROCEDURE
  addproducttoshoppingcart(IN userid    INT,
                           IN productid INT,
                           IN quantity  INT)
begin
  INSERT INTO shoppingcart
              (
                          user_id,
                          product_id,
                          quantity,
                          created_at
              )
              VALUES
              (
                          userid,
                          productid,
                          quantity,
                          now()
              );
  END;//
delimiter ;

-- 3. Procedimiento para marcar una notificación como leída
-- Este procedimiento permite a un usuario marcar una notificación como leída. Toma como entrada el ID de la notificación y el ID del usuario. Luego, actualiza el estado de la notificación a "leída" en la tabla notification.DELIMITER //
CREATE PROCEDURE
  marknotificationasread(IN notificationid INT,
                         IN userid         INT)
begin
  UPDATE notification
  SET    read_ = TRUE
  WHERE  id = notificationid
  AND    user_id = userid;
END;//
delimiter ;
