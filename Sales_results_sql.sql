--  Total Sales by Country
SELECT
    country,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY country
ORDER BY total_sales DESC;

-- Top 10 Customers by Sales
SELECT
    customername,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY customername
ORDER BY total_sales DESC
LIMIT 10;

-- Average Sales by Product Line
SELECT
    productline,
    ROUND(AVG(sales),2) AS average_sales
FROM sales_data
GROUP BY productline
ORDER BY average_sales DESC;

-- Orders by Sales Category
 SELECT
    salescategory,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY salescategory
ORDER BY total_orders DESC;

-- Yearly Sales
 SELECT
    YEAR(orderdate) AS year,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY YEAR(orderdate)
ORDER BY year;

-- Top 5 Cities by Sales
SELECT
    city,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY city
ORDER BY total_sales DESC
LIMIT 5;

-- Average Quantity Ordered by Product Line
SELECT
    productline,
    ROUND(AVG(quantityordered),2) AS avg_quantity
FROM sales_data
GROUP BY productline
ORDER BY avg_quantity DESC;

-- Highest Revenue Orders
SELECT
    ordernumber,
    customername,
    ROUND(sales,2) AS sales
FROM sales_data
ORDER BY sales DESC
LIMIT 10;

-- Monthly Sales Trend
 SELECT
    MONTH(orderdate) AS month,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY MONTH(orderdate)
ORDER BY month;

-- Running Total of Sales by Order Date
SELECT
    orderdate,
    sales,
    SUM(sales) OVER (
        ORDER BY orderdate
    ) AS running_total
FROM sales_data;