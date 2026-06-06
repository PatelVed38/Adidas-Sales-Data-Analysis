-- 1 .sales by Region

SELECT region,
       SUM(total_sales) AS Total_Sales
FROM adidas_sales
GROUP BY region;

-- 2. top 5 States by Sales

SELECT TOP 5 state,
       SUM(total_sales) AS Total_Sales
FROM adidas_sales
GROUP BY state
ORDER BY Total_Sales DESC;


--3. Profit by Product

SELECT product,
       SUM(operating_profit) AS Total_Profit
FROM adidas_sales
GROUP BY product
ORDER BY Total_Profit DESC;

--4 average Price per Product

SELECT product,
       AVG(price_per_unit) AS Avg_Price
FROM adidas_sales
GROUP BY product;


--5 sales by Sales Method

SELECT sales_method,
       SUM(total_sales) AS Total_Sales
FROM adidas_sales
GROUP BY sales_method;

--6. Top 10 Cities by Profit

SELECT TOP 10 city,
       SUM(operating_profit) AS Total_Profit
FROM adidas_sales
GROUP BY city
ORDER BY Total_Profit DESC;

--7. best selling products

SELECT
    product,
    SUM(units_sold) AS units_sold
FROM adidas_sales
GROUP BY product
ORDER BY units_sold DESC;

--8. sales by retailer

SELECT
    retailer,
    SUM(total_sales) AS total_sales
FROM adidas_sales
GROUP BY retailer
ORDER BY total_sales DESC;
