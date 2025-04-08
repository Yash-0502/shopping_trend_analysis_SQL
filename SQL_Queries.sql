-- Question 1: Top 5 Customers by Total Spending
SELECT "Customer ID", Location, SUM("Purchase Amount (USD)") AS Total_Spent
FROM shopping_trends
GROUP BY "Customer ID", Location
ORDER BY Total_Spent DESC
LIMIT 5;

-- Question 2: Most and Least Purchased Products
SELECT "Item Purchased", COUNT(*) AS Purchase_Count
FROM shopping_trends
GROUP BY "Item Purchased"
ORDER BY Purchase_Count DESC
LIMIT 3;

SELECT "Item Purchased", COUNT(*) AS Purchase_Count
FROM shopping_trends
GROUP BY "Item Purchased"
ORDER BY Purchase_Count ASC
LIMIT 3;

-- Question 3: Average Review Rating by Product Category
SELECT Category, ROUND(AVG("Review Rating"), 2) AS Avg_Rating
FROM shopping_trends
GROUP BY Category
ORDER BY Avg_Rating DESC;

-- Question 4: Total Spending by Season
SELECT Season, SUM("Purchase Amount (USD)") AS Total_Spent
FROM shopping_trends
GROUP BY Season
ORDER BY Total_Spent DESC;