--International Debt
--world_bank_intl_debt

--Total Amount Of Debt Taken By India  Between 1970-2015 

SELECT country_name, SUM(value) AS Total_debt 
FROM `bigquery-public-data.world_bank_intl_debt.international_debt` AS T1
LEFT JOIN `bigquery-public-data.world_bank_intl_debt.country_summary` AS T2 ON T1.country_code=T2.country_code 
WHERE country_name='India'
GROUP BY 1
ORDER BY 2 desc 
