-- Databricks notebook source
-- MAGIC %md
-- MAGIC

-- COMMAND ----------



SELECT COUNT (DISTINCT `Customer ID`) AS unique_customers, -- Count of number of unique customers
        Date,
        YEAR(Date) AS trans_year, -- Extracts year from date column
        
        MONTHNAME(Date) AS trans_month_name, -- Extracts name of the month from date column
        MONTH(Date) AS trans_month, -- Extracts month from date column
        
        DAY(Date) AS trans_day, -- Extracts day from date column
        DAYNAME(Date) AS trans_day_name, -- Extracts day of the week from data column

        SUM(`Total Amount`) AS revenue,
        `Product Category`


FROM retail.sales.dataset
GROUP BY ALL; -- Group data based on columns not aggregated 
--LIMIT 5;







