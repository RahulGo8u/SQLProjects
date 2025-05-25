INSERT INTO products (product_name, price, stock_quantity) VALUES
('Wireless Mouse', 799.00, 100),
('Mechanical Keyboard', 1499.00, 50),
('USB-C Cable', 299.00, 200),
('Laptop Stand', 999.00, 75),
('Bluetooth Speaker', 1299.00, 30),
('Webcam HD', 899.00, 60),
('Wireless Earbuds', 1799.00, 40),
('Smartphone Tripod', 499.00, 80),
('HDMI Cable', 249.00, 150),
('LED Monitor 24 inch', 8999.00, 20);


INSERT INTO customers (customer_name, email) VALUES
('Rahul Sharma', 'rahul@example.com'),
('Sneha Mehta', 'sneha@example.com'),
('Amit Verma', 'amit@example.com'),
('Priya Singh', 'priya@example.com'),
('Karan Thakur', 'karan@example.com'),
('Divya Patel', 'divya@example.com');

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 2, 1, '2025-05-20'),
(2, 1, 2, '2025-05-21'),
(1, 3, 3, '2025-05-22'),
(3, 5, 1, '2025-05-23'),
(4, 4, 2, '2025-05-23'),
(2, 6, 1, '2025-05-24'),
(5, 7, 1, '2025-05-24'),
(6, 2, 1, '2025-05-25'),
(1, 8, 1, '2025-05-25'),
(3, 1, 2, '2025-05-25'),
(4, 10, 1, '2025-05-26'),
(5, 9, 3, '2025-05-26'),
(6, 3, 1, '2025-05-26'),
(1, 5, 2, '2025-05-27'),
(2, 7, 1, '2025-05-27'),
(3, 2, 2, '2025-05-27'),
(4, 8, 1, '2025-05-28'),
(5, 6, 1, '2025-05-28'),
(6, 9, 2, '2025-05-29'),
(2, 4, 1, '2025-05-29');
