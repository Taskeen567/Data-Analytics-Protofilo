# Financial Performance Dashboard

## Overview

This project focuses on analyzing financial performance using SQL and Power BI. The objective was to clean, transform, and analyze raw financial data to generate actionable business insights related to revenue, profit, expenses, products, countries, and customer segments.

The project demonstrates end-to-end Data Analytics workflow including Data Cleaning, Data Transformation, Data Modeling, KPI Analysis, and Dashboard Development.

---

## Tools & Technologies

* SQL (MySQL)
* Power BI
* DAX
* Power Query
* Microsoft Excel

---

## Dataset Information

The dataset contains financial transaction records including:

* Segment
* Country
* Product
* Discount Band
* Units Sold
* Manufacturing Price
* Sale Price
* Gross Sales
* Discounts
* Sales
* COGS
* Profit
* Date

---

## Data Cleaning & Preparation (SQL)

Before building the dashboard, extensive data cleaning was performed using SQL.

### Duplicate Check

* Created a duplicate copy of the original dataset.
* Used ROW_NUMBER() Window Function to identify duplicate records.
* Verified that no duplicate records existed.

### Data Standardization

Cleaned and standardized the following fields:

* Units Sold
* Manufacturing Price
* Sale Price
* Gross Sales
* Discounts
* Sales
* COGS
* Profit

Operations performed:

* Removed "$" symbols.
* Removed commas (,).
* Removed brackets and special characters.
* Converted text values into numeric data types using DECIMAL format.

### Date Formatting

* Converted Date column from text format to DATE datatype using STR_TO_DATE().
* Standardized date format for accurate time-based analysis.

### Missing Value Handling

* Identified blank and NULL values.
* Trimmed unwanted spaces using TRIM().
* Replaced invalid values and cleaned Profit column.
* Converted blank Profit values to NULL.
* Replaced NULL Profit values with 0.

### Data Validation

* Verified distinct values across:

  * Segment
  * Country
  * Product
  * Discount Band
  * Month Name

* Ensured consistency and data quality before dashboard development.

---

## Dashboard KPIs

* Total Sales
* Total Profit
* Profit Margin
* Current Year Sales
* Previous Year Sales
* Current Year Profit
* Previous Year Profit

---

## Key Insights

* Total Sales reached ₹118.73M while Total Profit stood at ₹18.45M.
* Current Year Sales grew 2.49x compared to the Previous Year.
* Current Year Profit increased 2.27x year-over-year.
* Government Segment generated the highest revenue at ₹53M.
* United States was the top-performing country by sales.
* Paseo was the best-selling product, contributing ₹33M in revenue.
* Medium and High Discount Bands generated the largest share of total sales.
* Sales and Profit followed a similar monthly trend, indicating consistent business growth.

<img width="1012" height="910" alt="Financial Insights" src="https://github.com/user-attachments/assets/b7204d24-0218-419a-8fc5-5b2f91bf4b20" />


