--Iowa Liquor Retail Sales
--iowa_liquor_sales

--Suppose the vendor(Diageo Americas) wants to know which stores order their liquor, maximum amount !!!

SELECT UPPER(store_name) AS store_name, SUM(sale_dollars) AS total_sales_amt 
FROM `bigquery-public-data.iowa_liquor_sales.sales`
WHERE vendor_name = "Diageo Americas"
GROUP BY 1
ORDER BY 2 desc
