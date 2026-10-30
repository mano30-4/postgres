—sub queries
—List the name and the price of all products that are more expensive then all products in ’Toys’ department

SELECT name,price
FROM products
WHERE price > (
    SELECT MAX(price)
    from products
    WHERE department = 'Toys'
);


SELECT p.name, price_weight_ratio
FROM (
    SELECT name, price/weight AS price_weight_ratio 
    FROM products) AS p
where price_weight_ratio > 5 

— find average number of orders for all users

SELECT AVG(order_count)
FROM (
SELECT user_id,COUNT(product_id) as order_count
FROM orders
GROUP BY user_id
) AS p

— distinct, greatest, least 

SELECT DISTINCT department, name
FROM products

SELECT COUNT(DISTINCT(product_id))
FROM orders

SELECT COUNT(DISTINCT(product_id), DISTINCT(paid)) — inside count only one distinct is allowed
FROM orders

SELECT COUNT(product_id)/COUNT(DISTINCT(user_id)) as average_orders_per_user
FROM orders


SELECT name, weight, GREATEST(weight * 2 , 30) AS ship_to_cost
FROM products

SELECT name, weight, LEAST(weight * 2, 30 ) AS ship_to_cost
FROM products

SELECT name, price,
CASE 
WHEN price > 600 THEN 'high'
WHEN price > 300 THEN 'medium'
ELSE 'cheap'
END
FROM products
