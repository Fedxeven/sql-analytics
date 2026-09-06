-- Users
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO users (user_id, name, city) VALUES
(1, 'Anna', 'Moscow'),
(2, 'Ivan', 'Saint Petersburg'),
(3, 'Maria', 'Moscow'),
(4, 'Alex', 'Kazan'),
(5, 'Kate', 'Moscow'),
(6, 'Max', 'Sochi');

-- Products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Headphones', 'Electronics', 5000),
(2, 'Keyboard', 'Electronics', 3500),
(3, 'Coffee mug', 'Home', 1200),
(4, 'Backpack', 'Accessories', 4000),
(5, 'Notebook', 'Stationery', 500);

-- Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    order_date DATE,
    quantity INT
);

INSERT INTO orders (order_id, user_id, product_id, order_date, quantity) VALUES
(1, 1, 1, '2026-01-05', 1),
(2, 1, 3, '2026-01-10', 2),
(3, 2, 2, '2026-01-12', 1),
(4, 3, 4, '2026-01-15', 1),
(5, 3, 5, '2026-01-18', 3),
(6, 4, 1, '2026-01-20', 1),
(7, 5, 2, '2026-01-22', 2),
(8, 5, 3, '2026-01-25', 1),
(9, 6, 4, '2026-01-28', 1),
(10, 2, 5, '2026-01-30', 4);
