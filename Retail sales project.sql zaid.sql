USE retail_sales_project;

-- 1. Total Sales, Profit and Quantity
SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM retail_sales;

-- 2. Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders
FROM retail_sales;

-- 3. Category-wise Sales and Profit
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM retail_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 4. Top 5 Products
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;

-- 5. State-wise Sales
SELECT
    State,
    SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY State
ORDER BY Total_Sales DESC;

-- 6. Payment Method Analysis
SELECT
    Payment_Method,
    COUNT(*) AS Total_Transactions,
    SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY Payment_Method
ORDER BY Total_Sales DESC;

-- 7. Customer Segment Analysis
SELECT
    Customer_Segment,
    COUNT(DISTINCT Customer_ID) AS Customers,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM retail_sales
GROUP BY Customer_Segment
ORDER BY Total_Sales DESC;

-- 8. Monthly Sales
SELECT
    DATE_FORMAT(Order_Date, '%Y-%m') AS Sales_Month,
    SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY Sales_Month;