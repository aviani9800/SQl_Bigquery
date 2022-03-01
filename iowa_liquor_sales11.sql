--Iowa Liquor Retail Sales
--iowa_liquor_sales

--Stores from where Alcoholic Beverages Division gain the max revenue.

SELECT store_name,SUM((state_bottle_retail-state_bottle_cost)*bottles_sold ) as Revenue_Collected_ByAuth
FROM  `bigquery-public-data.iowa_liquor_sales.sales` 
GROUP BY 1
ORDER BY 2 DESC
