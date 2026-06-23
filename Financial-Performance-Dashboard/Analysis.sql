SELECT
*
FROM financial_data2;

#Over All Sales
SELECT
SUM(Sales) AS Total_Revenue
FROm financial_data2;

#Sales By Segment
SELECT
SUM(sales) AS Total_Revenue,
Segment
FROM financial_data2
GROUP BY
Segment
ORDER BY Total_Revenue DESC; 

#Sales By Country
SELECT
SUM(Sales) AS Total_Revenue,
Country
FROM financial_data2
GROUP BY
Country
ORDER BY 1 DESC; 
                
#Sales By Product
SELECT
SUM(sales) AS Total_Revenue,
Product
FROM financial_data2
GROUP BY
Product
ORDER BY 1 DESC; 

#Monthly Sales
SELECT
`Month Name`,
SUM(sales) AS Total_Sales
FROM financial_data2
GROUP BY
`Month Name`
ORDER BY 2 DESC; 

#Yearly Sales
SELECT
`Year`,
SUM(sales) AS Total_Revenue
FROM financial_data2
GROUP BY
`Year`
ORDER BY 2 DESC;
                
#Total Profit
SELECT
SUM(profit) AS Total_Profit
FROM financial_data2;

SELECT
SUM(profit) AS Total_Profit,
`Year`
FROM financial_data2
GROUP BY
`Year`
ORDER BY 1 DESC; 
           