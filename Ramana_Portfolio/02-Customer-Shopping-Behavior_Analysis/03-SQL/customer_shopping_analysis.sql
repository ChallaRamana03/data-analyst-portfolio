CREATE DATABASE customer_shopping_analysis;
USE customer_shopping_analysis;
CREATE TABLE shopping_data (
invoice_no VARCHAR(20),
customer_id VARCHAR(20),
gender VARCHAR(10),
age INT,
category VARCHAR(50),
quantity INT,
price DECIMAL(10,2),
payment_method VARCHAR(20),
invoice_date VARCHAR(20),
shopping_mall VARCHAR(50),
sales DECIMAL(10,2),
month VARCHAR(10),
year INT
);
SELECT COUNT(*) FROM shopping_data;
DESCRIBE shopping_data;
SELECT *
FROM shopping_data
LIMIT 10;
SELECT SUM(sales) AS total_sales
FROM shopping_data;
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM shopping_data;
SELECT SUM(quantity) AS total_quantity
FROM shopping_data;
SELECT category,
SUM(sales) AS total_sales
FROM shopping_data
GROUP BY category
ORDER BY total_sales DESC;
SELECT gender,
SUM(sales) AS total_sales
FROM shopping_data
GROUP BY gender;
SELECT shopping_mall,
SUM(sales) AS total_sales
FROM shopping_data
GROUP BY shopping_mall
ORDER BY total_sales DESC;
SELECT month,
SUM(sales) AS total_sales
FROM shopping_data
GROUP BY month
ORDER BY total_sales DESC;
SELECT customer_id,
SUM(sales) AS total_spent
FROM shopping_data
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;
SELECT category,
SUM(quantity) AS total_quantity
FROM shopping_data
GROUP BY category
ORDER BY total_quantity DESC;
SELECT month,
SUM(sales) AS total_sales
FROM shopping_data
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;
SELECT AVG(sales) AS avg_sales
FROM shopping_data;
SELECT payment_method,
SUM(sales) AS total_sales
FROM shopping_data
GROUP BY payment_method
ORDER BY total_sales DESC;
SELECT age,
SUM(sales) AS total_sales
FROM shopping_data
GROUP BY age
ORDER BY total_sales DESC;
SELECT shopping_mall,
SUM(sales) AS total_sales
FROM shopping_data
GROUP BY shopping_mall
ORDER BY total_sales DESC
LIMIT 1;
SELECT year,
SUM(sales) AS yearly_sales
FROM shopping_data
GROUP BY year
ORDER BY year;