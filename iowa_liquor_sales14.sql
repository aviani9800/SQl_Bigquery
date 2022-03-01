--Iowa Liquor Retail Sales
--iowa_liquor_sales

--Average order value By Stores 
 
SELECT UPPER(store_name) AS store_name, AVG(sale_dollars) AS Avg_sales_amt
FROM `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY 1
ORDER BY 2 desc
