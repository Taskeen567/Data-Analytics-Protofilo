SELECT
*
FROM financial_data;

CREATE TABLE financial_data2
SELECT
*
FROM financial_data;

SELECT
*
FROM financial_data2;

#Remove Duplicates
SELECT
*,
ROW_NUMBER()OVER(PARTITION BY Segment,Country,Product,`Discount Band`,`Units Sold`,`Manufacturing Price`,`Sale Price`,`Gross Sales`,Discounts,COGS,Profit,`Date`,`Month Number`,`Month Name`,`Year`)AS Dupes
FROM financial_data2;

WITH Duplicate_CTE AS
(
SELECT
*,
ROW_NUMBER()OVER(PARTITION BY Segment,Country,Product,`Discount Band`,`Units Sold`,`Manufacturing Price`,`Sale Price`,`Gross Sales`,Discounts,COGS,Profit,`Date`,`Month Number`,`Month Name`,`Year`)AS Dupes
FROM financial_data2
)
SELECT
*
FROM Duplicate_CTE
WHERE Dupes >1;
#No Duplicates

#Standerlization
SELECT
*
FROM financial_data2;

SELECT
DISTINCT Segment
FROM financial_data2
ORDER BY 1 ;

SELECT
DISTINCT Country
FROM financial_data2
ORDER BY 1;

SELECT
DISTINCT Product
FROM financial_data
ORDER BY 1;

SELECT
DISTINCT `Discount Band`
FROM financial_data2
ORDER BY 1;

SELECT
DISTINCT `Month Name`
FROM financial_data2
ORDER BY 1;

SELECT
*
FROM financial_data2;

SELECT
`Units Sold`,
REPLACE(`Units Sold`,"$","") AS Replaced,
REPLACE(`Units Sold`,",","") AS Replaced2
FROM financial_data2;

UPDATE financial_data2
SET `Units Sold`=REPLACE(`Units Sold`,"$","");

UPDATE financial_data2
SET `Units Sold`=REPLACE(`Units Sold`,",","");

ALTER TABLE financial_data2
MODIFY COLUMN `Units Sold` DECIMAL(10,2);

UPDATE financial_data2
SET `Manufacturing Price`=REPLACE(`Manufacturing price`,"$","");

UPDATE financial_data2
SET `Manufacturing Price`=REPLACE(`Manufacturing price`,",","");

ALTER TABLE financial_data2
MODIFY `Manufacturing price` DECIMAL(10,2);

UPDATE financial_data2
SET `Sale Price`=REPLACE(`Sale Price`,"$","");

UPDATE financial_data2
SET `Sale Price`=REPLACE(`Sale Price`,",","");

ALTER TABLE financial_data2
MODIFY COLUMN `Sale Price` DECIMAL(10,2);

UPDATE financial_data2
SET  `Gross Sales`=REPLACE(`Gross Sales`,"$","");

UPDATE financial_data2
SET `Gross Sales`=REPLACE(`Gross Sales`,",","");

ALTER TABLE financial_data2
MODIFY COLUMN `Gross Sales` DECIMAL(10,2);

UPDATE financial_data2
SET  `Discounts`=REPLACE(`Gross Sales`,"$","");

UPDATE financial_data2
SET `Discounts`=REPLACE(`Gross Sales`,",","");

UPDATE financial_data2
SET `Discounts`=REPLACE(`Gross Sales`,"-","");

ALTER TABLE financial_data2
MODIFY COLUMN `Discounts` DECIMAL(10,2);

UPDATE financial_data2
SET  `Sales`=REPLACE(`Sales`,"$","");

UPDATE financial_data2
SET `Sales`=REPLACE(`Sales`,",","");

ALTER TABLE financial_data2
MODIFY COLUMN `Sales` DECIMAL(10,2);

SELECT
*
FROM financial_data2;

UPDATE financial_data2
SET  `COGS`=REPLACE(`COGS`,"$","");

UPDATE financial_data2
SET `COGS`=REPLACE(`COGS`,",","");

ALTER TABLE financial_data2
MODIFY COLUMN `COGS` DECIMAL(10,2);

UPDATE financial_data2
SET  `Profit`=REPLACE(`Profit`,"$","");

UPDATE financial_data2
SET `Profit`=REPLACE(`Profit`,",","");




SELECT
DISTINCT profit
FROM financial_data2
ORDER BY 1 ;


UPDATE financial_data2
SET `Date`= str_to_date(`Date`,'%m/%d/%Y');

ALTER TABLE financial_data2
MODIFY COLUMN `Date`DATE;

#Remove Blanks
SELECT
*
FROM financial_data2;

SELECT
DISTINCT `Units Sold`
FROM  financial_data2
ORDER BY 1;

SELECT
DISTINCT `Manufacturing Price`
FROM financial_data2
ORDER BY 1;

SELECT
DISTINCT `Sale Price`
FROM financial_data2
ORDER BY 1;

SELECT
DISTINCT `Discounts`
FROM financial_data2
WHERE `Discounts` =""
ORDER BY 1;

SELECT
DISTINCT Sales
FROM financial_data2
ORDER BY 1;

SELECT
DISTINCT COGS
FROM financial_data2
ORDER BY 1;

SELECT
DISTINCT profit
FROM financial_data2
ORDER BY 1;

SELECT
profit
FROM financial_data2
WHERE profit IS NULL;

UPDATE financial_data2
SET `Profit`=TRIM(profit);

UPDATE financial_data2
SET `Profit`=replace(profit,"-","");

UPDATE financial_data2
SET Profit = Null
WHERE Profit = '' OR Profit = 'NULL';

UPDATE financial_data2
SET `Profit`=replace(profit,"(","");
UPDATE financial_data2
SET `Profit`=replace(profit,")","");

ALTER TABLE financial_data2
MODIFY COLUMN `Profit` DECIMAL(10,2);

SELECT
*
FROM financial_data2
WHERE profit IS NULL;



UPDATE financial_data2
SET profit=0.00
WHERE profit IS NULL;