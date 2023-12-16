-- Creación de tablas

-- Crear la base de datos del marketplace
CREATE DATABASE IF NOT EXISTS marketplace_db;

USE marketplace_db;

-- Tabla de Usuarios
CREATE TABLE IF NOT EXISTS user
  (
     id INT auto_increment PRIMARY KEY,username VARCHAR(50) NOT NULL UNIQUE,
     email VARCHAR(255) NOT NULL UNIQUE,password VARCHAR(255) NOT NULL,
     created_at DATETIME,updated_at DATETIME
  );

-- Tabla de Productos
CREATE TABLE IF NOT EXISTS product
  (
     id INT auto_increment PRIMARY KEY,name VARCHAR(255) NOT NULL,
     description VARCHAR(255),price DECIMAL(10, 2) NOT NULL,seller_id INT,
     created_at DATETIME,updated_at DATETIME,
     FOREIGN KEY (seller_id) REFERENCES user(id)
  );

-- Tabla de Transacciones
CREATE TABLE IF NOT EXISTS transaction
  (
     id INT auto_increment PRIMARY KEY,buyer_id INT,seller_id INT,product_id INT
     ,amount DECIMAL(10, 2) NOT NULL,created_at DATETIME,
     FOREIGN KEY (buyer_id) REFERENCES user(id),
     FOREIGN KEY (seller_id) REFERENCES user(id),
     FOREIGN KEY (product_id) REFERENCES product(id)
  );

-- Tabla de Reseñas
CREATE TABLE IF NOT EXISTS review
  (
     id INT auto_increment PRIMARY KEY,user_id INT,product_id INT,
     rating INT NOT NULL,comment VARCHAR(255),created_at DATETIME,
     FOREIGN KEY (user_id) REFERENCES user(id),
     FOREIGN KEY (product_id) REFERENCES product(id)
  );

-- Tabla de Categorías
CREATE TABLE IF NOT EXISTS category
  (
     id INT auto_increment PRIMARY KEY,name VARCHAR(50) NOT NULL
  );

-- Tabla de Relación entre Productos y Categorías
CREATE TABLE IF NOT EXISTS productcategory
  (
     product_id INT,category_id INT,
     FOREIGN KEY (product_id) REFERENCES product(id),
     FOREIGN KEY (category_id) REFERENCES category(id)
  );

-- Tabla de Direcciones
CREATE TABLE IF NOT EXISTS address
  (
     id INT auto_increment PRIMARY KEY,user_id INT,street VARCHAR(255),city
     VARCHAR(50),state VARCHAR(50),postal_code VARCHAR(20),
     FOREIGN KEY (user_id) REFERENCES user(id)
  );

-- Tabla de Carritos de Compras
CREATE TABLE IF NOT EXISTS shoppingcart
  (
     id INT auto_increment PRIMARY KEY,user_id INT,product_id INT,
     quantity INT NOT NULL,created_at DATETIME,
     FOREIGN KEY (user_id) REFERENCES user(id),
     FOREIGN KEY (product_id) REFERENCES product(id)
  );

-- Tabla de Pagos
CREATE TABLE IF NOT EXISTS payment
  (
     id INT auto_increment PRIMARY KEY,user_id INT,
     amount DECIMAL(10, 2) NOT NULL,payment_date DATETIME,
     FOREIGN KEY (user_id) REFERENCES user(id)
  );

-- Tabla de Notificaciones
CREATE TABLE IF NOT EXISTS notification
  (
     id INT auto_increment PRIMARY KEY,user_id INT,message VARCHAR(255),READ
     BOOLEAN DEFAULT false,created_at DATETIME,
     FOREIGN KEY (user_id) REFERENCES user(id)
  ); 