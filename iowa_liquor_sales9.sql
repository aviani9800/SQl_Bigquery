--Iowa Liquor Retail Sales
--iowa_liquor_sales

--TOP 10 vendor name of the company for the brand of liquor ordered by stores.
 
SELECT UPPER(vendor_name) as vendor_name, COUNT(vendor_name)as Number_of_sales
FROM `bigquery-public-data.iowa_liquor_sales.sales`
GROUP BY 1
ORDER BY 2 desc 
