--Stored Procedures

-- 1. Procedimiento para calcular el total gastado por un usuario
-- Este procedimiento acepta como entrada el ID de un usuario y calcula el total gastado por ese usuario en transacciones de compra.
DELIMITER //
CREATE PROCEDURE
  calculatetotalspentbyuser(IN userid      INT,
                            OUT totalspent DECIMAL(10, 2))
begin
  SELECT sum(amount)
  INTO   totalspent
  FROM   transaction
  WHERE  buyer_id = userid;END;//
delimiter ;


-- 2. Procedimiento para agregar productos al carrito de compras
-- Este procedimiento permite a un usuario agregar productos a su carrito de compras. Toma como entrada el ID del usuario, el ID del producto y la cantidad a agregar. Luego, inserta una fila en la tabla shoppingcart para registrar el producto en el carrito del usuario.
DELIMITER //
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
              );END;//
delimiter ; DELIMITER //
CREATE PROCEDURE
  calculatetotalspentbyuser(IN userid      INT,
                            OUT totalspent DECIMAL(10, 2))
begin
  SELECT sum(amount)
  INTO   totalspent
  FROM   transaction
  WHERE  buyer_id = userid;END;//
delimiter ;


-- 3. Procedimiento para marcar una notificación como leída
-- Este procedimiento permite a un usuario marcar una notificación como leída. Toma como entrada el ID de la notificación y el ID del usuario. Luego, actualiza el estado de la notificación a "leída" en la tabla notification.
DELIMITER //
CREATE PROCEDURE
  marknotificationasread(IN notificationid INT,
                         IN userid         INT)
begin
  UPDATE notification
  SET    READ = TRUE
  WHERE  id = notificationid
  AND    user_id = userid;END;//
delimiter ;