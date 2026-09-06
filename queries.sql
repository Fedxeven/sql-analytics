-- 1. Total revenue
SELECT SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id;
