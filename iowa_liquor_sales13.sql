--Iowa Liquor Retail Sales
--iowa_liquor_sales

--city from where maximum number of liquor ordered 
 
SELECT UPPER(city) AS city, COUNT(city) AS Number_of_Times_Ordered
FROM `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY 1
ORDER BY 2 desc 
