-- Inserción de datos

-- Inserción de datos en la tabla User
INSERT INTO user
            (username,email,password,created_at,updated_at)
VALUES      ('JuanPerez','juanperez@email.com','contrasena1',
             '2023-01-15 10:30:00',
             '2023-03-20 15:45:00'),
            ('MariaLopez','marialopez@email.com','contrasena2',
             '2023-02-05 14:20:00',
             '2023-04-10 09:15:00'),
            ('CarlosGomez','carlosgomez@email.com','contrasena3',
             '2023-03-10 08:45:00',
             '2023-05-25 12:30:00'),
            ('LauraFernandez','laurafernandez@email.com','contrasena4',
             '2023-04-20 17:10:00',
             '2023-06-30 16:05:00'),
            ('PedroRodriguez','pedrorodriguez@email.com','contrasena5',
             '2023-05-25 11:55:00',
             '2023-07-05 14:25:00'),
            ('SofiaTorres','sofiatorres@email.com','contrasena6',
             '2023-06-10 09:30:00',
             '2023-08-10 18:40:00'),
            ('AndresSanchez','andressanchez@email.com','contrasena7',
             '2023-07-15 13:15:00',
             '2023-09-15 10:30:00'),
            ('IsabellaMartinez','isabellamartinez@email.com','contrasena8',
             '2023-08-05 16:40:00','2023-09-25 19:15:00'),
            ('LuisGonzalez','luisgonzalez@email.com','contrasena9',
             '2023-09-01 10:20:00',
             '2023-09-10 11:50:00'),
            ('AnaRamirez','anaramirez@email.com','contrasena10',
             '2023-09-10 14:30:00',
             '2023-09-15 15:20:00'); 

-- Inserción de datos en la tabla Product
INSERT INTO product
            (name,description,price,seller_id,created_at,updated_at)
VALUES      ('Balón de Fútbol Adidas','Balón de fútbol de alta calidad',25.5
             ,1,
             '2023-01-05 11:30:00','2023-01-10 16:45:00'),
            ('Raqueta de Tenis Wilson','Raqueta de tenis profesional',89.9,2,
             '2023-02-10 09:20:00','2023-02-15 15:10:00'),
            ('Zapatillas de Running Nike','Zapatillas deportivas para correr',
             65.0,3,
             '2023-03-15 13:45:00','2023-03-20 17:30:00'),
            ('Balón de Baloncesto Spalding','Balón de baloncesto oficial',19.8
             ,4,
             '2023-04-20 12:10:00','2023-04-25 14:55:00'),
            ('Tabla de Surf Quiksilver','Tabla de surf para olas grandes',75.2,5
             ,
             '2023-05-25 10:25:00','2023-05-30 16:15:00'),
            ('Patines en Línea Rollerblade','Patines en línea para patinaje',
             54.3,6,
             '2023-06-01 15:30:00','2023-06-05 18:20:00'),
            ('Raqueta de Squash Head','Raqueta de squash de alto rendimiento',
             72.7,7,
             '2023-07-05 08:30:00','2023-07-10 12:15:00'),
            ('Casco de Ciclismo Giro','Casco ligero y seguro para ciclistas',
             35.1,8,
             '2023-08-10 09:30:00','2023-08-15 13:20:00'),
            ('Pelota de Golf Titleist','Pelota de golf de tour profesional',45.6
             ,9,
             '2023-09-10 11:10:00','2023-09-15 15:50:00'),
            ('Red de Voleibol Mikasa','Red de voleibol resistente y duradera',
             29.0,10,
             '2023-09-15 14:20:00','2023-09-20 17:15:00'); 

-- Inserción de datos en la tabla Transaction
INSERT INTO transaction
            (buyer_id,seller_id,product_id,amount,created_at)
VALUES      (2,1,1,25.5,'2023-01-15 09:30:00'),
            (3,2,2,89.9,'2023-02-10 10:20:00'),
            (4,3,3,65.0,'2023-03-15 11:45:00'),
            (5,4,4,19.8,'2023-04-20 14:10:00'),
            (6,5,5,75.2,'2023-05-25 15:25:00'),
            (7,6,6,54.3,'2023-06-01 16:30:00'),
            (8,7,7,72.7,'2023-07-05 09:30:00'),
            (9,8,8,35.1,'2023-08-10 12:40:00'),
            (10,9,9,45.6,'2023-09-10 13:10:00'),
            (1,10,10,29.0,'2023-09-15 10:15:00');

-- Inserción de datos en la tabla Review
INSERT INTO review
            (user_id,product_id,rating,comment,created_at)
VALUES      (1,1,4,'Excelente balón de fútbol','2023-01-16 08:45:00'),
            (2,2,5,'La mejor raqueta de tenis','2023-02-11 11:30:00'),
            (3,3,4,'Zapatillas cómodas para correr','2023-03-16 13:20:00'),
            (4,4,3,'Buen balón de baloncesto','2023-04-21 16:10:00'),
            (5,5,5,'Gran tabla de surf','2023-05-26 17:45:00'),
            (6,6,4,'Patines de alta calidad','2023-06-02 10:30:00'),
            (7,7,5,'Raqueta de squash impresionante','2023-07-06 12:15:00'),
            (8,8,4,'Casco cómodo para ciclismo','2023-08-11 14:20:00'),
            (9,9,3,'Buena pelota de golf','2023-09-11 15:50:00'),
            (10,10,4,'Red de voleibol resistente','2023-09-16 09:20:00');

-- Inserción de datos en la tabla Category
INSERT INTO category
            (name)
VALUES      ('Fútbol'),
            ('Tenis'),
            ('Running'),
            ('Baloncesto'),
            ('Surf'),
            ('Patinaje'),
            ('Squash'),
            ('Ciclismo'),
            ('Golf'),
            ('Voleibol');

-- Inserción de datos en la tabla ProductCategory (relación entre productos y categorías)
INSERT INTO productcategory
            (product_id,category_id)
VALUES      (1,1),
            (2,2),
            (3,3),
            (4,4),
            (5,5),
            (6,6),
            (7,7),
            (8,8),
            (9,9),
            (10,10);

-- Inserción de datos en la tabla Address
INSERT INTO address
            (user_id,street,city,state,postal_code)
VALUES      (1,'Calle A','Buenos Aires','Buenos Aires','1234'),
            (2,'Calle B','Córdoba','Córdoba','5678'),
            (3,'Calle C','Rosario','Santa Fe','9012'),
            (4,'Calle D','Mendoza','Mendoza','3456'),
            (5,'Calle E','Mar del Plata','Buenos Aires','7890'),
            (6,'Calle F','Salta','Salta','2345'),
            (7,'Calle G','La Plata','Buenos Aires','6789'),
            (8,'Calle H','Tucumán','Tucumán','0123'),
            (9,'Calle I','Neuquén','Neuquén','4567'),
            (10,'Calle J','San Juan','San Juan','8901');

-- Inserción de datos en la tabla ShoppingCart
INSERT INTO shoppingcart
            (user_id,product_id,quantity,created_at)
VALUES      (1,1,2,'2023-01-20 10:30:00'),
            (2,2,1,'2023-02-15 14:20:00'),
            (3,3,3,'2023-03-20 08:45:00'),
            (4,4,2,'2023-04-25 17:10:00'),
            (5,5,1,'2023-05-30 11:55:00'),
            (6,6,4,'2023-06-05 09:30:00'),
            (7,7,2,'2023-07-10 13:15:00'),
            (8,8,1,'2023-08-15 16:40:00'),
            (9,9,3,'2023-09-10 10:20:00'),
            (10,10,2,'2023-09-15 14:30:00');

-- Inserción de datos en la tabla Payment
INSERT INTO payment
            (user_id,amount,payment_date)
VALUES      (1,102.0,'2023-01-25 12:30:00'),
            (2,89.9,'2023-02-20 15:45:00'),
            (3,195.0,'2023-03-25 09:20:00'),
            (4,39.6,'2023-04-30 14:10:00'),
            (5,75.2,'2023-05-05 15:25:00'),
            (6,217.2,'2023-06-10 16:30:00'),
            (7,145.4,'2023-07-15 09:30:00'),
            (8,35.1,'2023-08-20 12:40:00'),
            (9,136.8,'2023-09-01 13:10:00'),
            (10,58.0,'2023-09-15 10:15:00');

-- Inserción de datos en la tabla Notification
INSERT INTO notification
            (user_id,message,READ,created_at)
VALUES      (1,'¡Nuevo producto en oferta!',0,'2023-01-16 08:45:00'),
            (2,'Tienes una nueva revisión en tu producto',0,
             '2023-02-11 11:30:00'),
            (3,'Confirmación de pago recibida',0,'2023-03-16 13:20:00'),
            (4,'Actualización de estado de entrega',0,'2023-04-21 16:10:00'),
            (5,'Oferta especial en productos deportivos',0,'2023-05-26 17:45:00'
),
            (6,'Mensaje de bienvenida a la plataforma',0,'2023-06-02 10:30:00'),
            (7,'Nuevas notificaciones disponibles',0,'2023-07-06 12:15:00'),
            (8,'Producto destacado de la semana',0,'2023-08-11 14:20:00'),
            (9,'Recordatorio de carrito de compras',0,'2023-09-11 15:50:00'),
            (10,'¡Gracias por unirse a nosotros!',0,'2023-09-16 09:20:00'); 