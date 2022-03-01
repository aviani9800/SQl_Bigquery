--Iowa Liquor Retail Sales
--iowa_liquor_sales

--TOP  10  Category  of  the  liquor  ordered by Stores from vendors for retail sales 

SELECT UPPER(category_name) AS Category_Name, COUNT(category_name) AS Number_of_sales
FROM `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY Category_Name
ORDER BY Number_of_sales desc 
