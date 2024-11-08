-- retrieve the total sales for each product category. 
SELECT Product, SUM(Sales) AS TOtal_Sales FROM product
GROUP BY Product;
-- find the number of sales transactions in each region. 
SELECT Region, COUNT(OrderID) AS Number_Of_SalesTransaction FROM product
GROUP BY Region;
-- find the highest-selling product by total sales value. 
SELECT Product, SUM(Sales) AS TOtal_Sales FROM product
GROUP BY Product 
ORDER BY SUM(Sales) DESC
LIMIT 1;
-- calculate total revenue per product. 
SELECT product, SUM(Quantity * UnitPrice) AS Total_Revenue FROM product
GROUP BY product;
-- calculate monthly sales totals for the current year. 
SELECT Month_name, SUM(Sales) FROM product
WHERE Years = 2024
GROUP BY Month_name ;
-- find the top 5 customers by total purchase amount. 
SELECT CustomerId, SUM(Sales) FROM product
GROUP BY CustomerId
ORDER BY SUM(Sales) DESC
LIMIT 5;
-- calculate the percentage of total sales contributed by each region. 
SELECT Region, SUM(sales) AS total_sales, (SUM(sales) / (SELECT SUM(sales) FROM product) * 100) AS sales_percentage
FROM product
GROUP BY Region
ORDER BY sales_percentage DESC;

-- identify products with no sales in the last quarter


-- 2)
-- retrieve the total number of customers from each region. 
SELECT Region, COUNT(*) AS TotalCustomers
FROM Customer
GROUP BY Region;

-- find the most popular subscription type by the number of customers. 
SELECT SubscriptionType, COUNT(*) AS Number_Of_Custumers
FROM Customer
GROUP BY SubscriptionType
ORDER BY CustomerCount DESC
LIMIT 1;

-- find customers who canceled their subscription within 6 months. 
SELECT CustomerID, SubscriptionStartDate, SubscriptionEndDate
FROM Customer
WHERE Canceled = 1 AND DATEDIFF(SubscriptionEndDate, SubscriptionStartDate) <= 180;
-- calculate the average subscription duration for all customers. 
SELECT AVG(DATEDIFF(SubscriptionEndDate, SubscriptionStartDate)) AS AverageDuration
FROM Customer;
-- find customers with subscriptions longer than 12 months. 
SELECT CustomerID, SubscriptionStartDate, SubscriptionEndDate
FROM Customer
WHERE DATEDIFF(SubscriptionEndDate, SubscriptionStartDate) > 365;
-- calculate total revenue by subscription type. 
SELECT SubscriptionType, SUM(Revenue) AS TotalRevenue
FROM Customer
GROUP BY SubscriptionType;
-- find the top 3 regions by subscription cancellations. 
SELECT Region, COUNT(*) AS CanceledSubscriptions
FROM Customer
WHERE Canceled = "TRUE"
GROUP BY Region
ORDER BY CanceledSubscriptions DESC
LIMIT 3;
-- find the total number of active and canceled subscriptions.
SELECT
    SUM(CASE WHEN Canceled = 'FALSE' THEN 1 ELSE 0 END) AS ActiveSubscriptions,
    SUM(CASE WHEN Canceled = 'TRUE' THEN 1 ELSE 0 END) AS CanceledSubscriptions
FROM
    Customer

