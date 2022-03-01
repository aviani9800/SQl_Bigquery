--Iowa Liquor Retail Sales
--iowa_liquor_sales

--All the orders value more than 500$, coming from the city INDIANOLA between 2017-01-31 and '2017-12-01'

SELECT invoice_and_item_number
FROM `bigquery-public-data.iowa_liquor_sales.sales` WHERE date BETWEEN '2017-01-31' AND '2017-12-01'
AND city ="Cedar Falls" 
AND sale_dollars > 500
