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
