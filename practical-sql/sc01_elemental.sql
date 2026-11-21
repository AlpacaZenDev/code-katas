-- Ejercicio 1: Exploración del catálogo de productos
select 
	p.product_id,
	p.product_name,
	p.unit_price
from products p 
limit 10;

-- Ejercicio 2: Filtro simple y ordenamiento
select 
	p.product_name,
	p.unit_price,
	p.units_in_stock
from products p
where p.unit_price > 50
order by p.unit_price desc;

-- Ejercicio 3: 
select 
	c.company_name,
	c.contact_name,
	c.city
from customers c
where c.country = 'Germany';

-- Ejercicio 4:Control de inventario por rango
select
	p.product_name,
	p.units_in_stock
from
	products p
where
	p.units_in_stock between 10 and 30
order by
	p.units_in_stock asc;

-- Ejercicio 5: Pedidos sin fecha de envío
select
	o.order_id,
	o.customer_id,
	o.ship_country,
	o.shipped_date
from
	orders o
where
	o.ship_country in ('Brazil', 'Mexico', 'Argentina')
	and o.shipped_date is null;

-- Ejercicio 6: Metricas globales del catálogo
-- 6.1. Total de productos en la tabla products:
select
	count(p.product_id) as "total_de_productos"
from
	products p;

-- 6.2. Precio promedio de todo el catálogo:
select
	round(AVG(p.unit_price)::NUMERIC, 2) as "precio_promedio"
from
	products p;
 

-- 6.3. Total de unidades físicas:
select
	sum(p.units_in_stock) as "stock_total"
from
	products p;

-- Ejercicio 7: Conteo de duplicados por país de destino
select
	o.ship_country,
	count(o.order_id) as total_pedidos
from
	orders o
group by o.ship_country
order by total_pedidos desc
limit 5;


-- Easter egg: Ejercicio de auditoria
select
	o.ship_country
	, count(o.order_id) as total_pedidos
from
	orders o
group by o.ship_country
having count(o.order_id) > 50;

-- Ejercicio 8: Productos y sus categorias






