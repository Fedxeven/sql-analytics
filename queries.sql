-- 1. Total revenue
SELECT SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id;
-- 2. Revenue by product
SELECT
    p.product_name,
    SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;
-- 3. Orders and revenue by user
SELECT
    u.name,
    COUNT(o.order_id) AS orders_count,
    SUM(p.price * o.quantity) AS total_spent
FROM users u
JOIN orders o
    ON u.user_id = o.user_id
JOIN products p
    ON o.product_id = p.product_id
GROUP BY u.name
ORDER BY total_spent DESC;
-- 4. Average order value
SELECT
    AVG(p.price * o.quantity) AS average_order_value
FROM orders o
JOIN products p
    ON o.product_id = p.product_id;
-- 5. Revenue by category
SELECT
    p.category,
    SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;
