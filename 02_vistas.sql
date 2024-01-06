-- Vistas principales

-- 1. TOP 3 de productos más vendidos
CREATE OR REPLACE view topsellingproducts
AS
  SELECT p.name        AS product_name,
         Sum(t.amount) AS total_sales
  FROM   product p
         JOIN transaction t
           ON p.id = t.product_id
  GROUP  BY p.id
  ORDER  BY total_sales DESC
  LIMIT  3; 

-- 2. Facturación mensual
CREATE OR REPLACE view monthlyrevenue
AS
  SELECT Date_format(t.created_at, '%Y-%m') AS month,
         Sum(t.amount) AS total_revenue
  FROM   transaction t
  GROUP  BY month
  ORDER  BY month;  

-- 3. Usuarios que más compras realizó
CREATE OR REPLACE view topbuyer
AS
  SELECT u.username AS top_buyer,Count(t.id) AS total_transactions
  FROM   user u
         LEFT JOIN transaction t
                ON u.id = t.buyer_id
  GROUP  BY u.id
  ORDER  BY total_transactions DESC
  LIMIT  1;   