-- Ejercicio 1: Exploración del catálogo de productos
SELECT
    p.product_id
    , p.product_name
    , p.unit_price
FROM
    products p
LIMIT 10;

-- Ejercicio 2: Filtro simple y ordenamiento
SELECT
    p.product_name
    , p.unit_price
    , p.units_in_stock
FROM
    products p
WHERE
    p.unit_price > 50
ORDER BY
    p.unit_price DESC;

-- Ejercicio 3: 
SELECT
    c.company_name
    , c.contact_name
    , c.city
FROM
    customers c
WHERE
    c.country = 'Germany';

-- Ejercicio 4:Control de inventario por rango
SELECT
    p.product_name
    , p.units_in_stock
FROM
    products p
WHERE
    p.units_in_stock BETWEEN 10 AND 30
ORDER BY
    p.units_in_stock ASC;

-- Ejercicio 5: Pedidos sin fecha de envío
SELECT
    o.order_id
    , o.customer_id
    , o.ship_country
    , o.shipped_date
FROM
    orders o
WHERE
    o.ship_country IN ('Brazil', 'Mexico', 'Argentina')
    AND o.shipped_date IS NULL;

-- Ejercicio 6: Metricas globales del catálogo
-- 6.1. Total de productos en la tabla products:
SELECT
    count(p.product_id) AS "total_de_productos"
FROM
    products p;

-- 6.2. Precio promedio de todo el catálogo:
SELECT
    round(AVG(p.unit_price)::NUMERIC, 2) AS "precio_promedio"
FROM
    products p;

-- 6.3. Total de unidades físicas:
SELECT
    sum(p.units_in_stock) AS "stock_total"
FROM
    products p;

-- Ejercicio 7: Conteo de duplicados por país de destino
SELECT
    o.ship_country
    , count(o.order_id) AS total_pedidos
FROM
    orders o
GROUP BY
    o.ship_country
ORDER BY
    total_pedidos DESC
LIMIT 5;

-- Easter egg: Ejercicio de auditoria
SELECT
    o.ship_country
    , count(o.order_id) AS total_pedidos
FROM
    orders o
GROUP BY
    o.ship_country
HAVING
    count(o.order_id) > 50;

-- Ejercicio 8: Productos y sus categorias
SELECT
    p.product_name
    , c.category_name
    , p.unit_price
FROM
    products p
INNER JOIN 
	categories c 
	ON
    p.category_id = c.category_id
ORDER BY
    p.category_id ASC
    , p.product_name ASC;

-- Ejercicio 9: Pedidos con nombre de cliente
SELECT
    o.order_id
    , o.order_date
    , c.company_name
FROM
    orders o
INNER JOIN 
    customers c 
    ON
    o.customer_id = c.customer_id
ORDER BY
    o.order_date DESC
LIMIT 10;

-- Ejercicio 10: Productos por proveedor
