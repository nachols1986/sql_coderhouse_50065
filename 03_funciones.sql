-- Funciones

-- 1. Calcular el promedio de calificaciones para un producto específico:
-- Esta función calcula el promedio de calificaciones de un producto en función de las reseñas asociadas a ese producto.
DELIMITER //
CREATE function
  calculateaveragerating(productid INT) returns DECIMAL(3,2)
begin
  DECLARE avgrating DECIMAL(3,2);SELECT Avg(rating)
  INTO   avgrating
  FROM   review
  WHERE  product_id = productid;RETURN avgrating;END //
delimiter ;

-- 2. Obtener la lista de productos en el carrito de compras de un usuario:
-- Esta función permite recuperar la lista de productos en el carrito de compras de un usuario en función de su ID de usuario.
DELIMITER //
CREATE function
  getcartproducts(userid INT) returns VARCHAR(255)
begin
  DECLARE cartproducts VARCHAR(255);SELECT Group_concat(p.name)
  INTO   cartproducts
  FROM   shoppingcart sc
  JOIN   product p
  ON     sc.product_id = p.id
  WHERE  sc.user_id = userid;RETURN cartproducts;END //
delimiter ;

-- 3. Calcular el total gastado por un usuario en transacciones:
-- Esta función calcula el total gastado por un usuario en todas sus transacciones registradas en la base de datos.
DELIMITER //
CREATE function
  calculatetotalspent(userid INT) returns DECIMAL(10,2)
begin
  DECLARE totalspent DECIMAL(10,2);SELECT Sum(amount)
  INTO   totalspent
  FROM   transaction
  WHERE  buyer_id = userid;RETURN totalspent;END //
delimiter ;