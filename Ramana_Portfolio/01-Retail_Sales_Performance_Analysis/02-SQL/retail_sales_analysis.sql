CREATE DATABASE retail_sales;
USE retail_sales;
CREATE TABLE superstore (
    row_id INT,
    order_id VARCHAR(50),
    order_date VARCHAR(20),
    ship_date VARCHAR(20),
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2)
);
SELECT COUNT(*) FROM superstore;
SELECT * FROM superstore
LIMIT 10;
SELECT SUM(sales) AS total_sales
FROM superstore;
SELECT SUM(profit) AS total_profit
FROM superstore;
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore;
DESCRIBE superstore;
SELECT category, SUM(sales) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;
SELECT region, SUM(sales) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;
SELECT segment, SUM(sales) AS total_sales
FROM superstore
GROUP BY segment
ORDER BY total_sales DESC;
SELECT 
MONTH(STR_TO_DATE(order_date,'%m/%d/%Y')) AS month_number,
SUM(sales) AS monthly_sales
FROM superstore
GROUP BY month_number
ORDER BY month_number;
SELECT product_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT product_name, SUM(profit) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 10;
SELECT state, SUM(sales) AS total_sales
FROM superstore
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;
SELECT discount, SUM(profit) AS total_profit
FROM superstore
GROUP BY discount
ORDER BY discount;
