--Iowa Liquor Retail Sales
--iowa_liquor_sales

TOP purchasing stores Of liquor

SELECT UPPER(store_name) AS store_name, SUM(sale_dollars) AS total_sales_amt
FROM `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY 1
ORDER BY 2 desc
