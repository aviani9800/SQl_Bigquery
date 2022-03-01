--INTERNATIONAL EDUCATION 
 
--world_bank_intl_education
 
--Government of India spending on women's educational development between the periods 1990-2000. 
 
SELECT year,country_name,value,short_definition AS Definition
FROM `bigquery-public-data.world_bank_intl_education.international_education` as T1
LEFT JOIN `bigquery-public-data.world_bank_intl_education.series_summary` as T2 ON T1.indicator_name=T2.indicator_name
WHERE country_name='India'
and year between  1990 and 2000
and short_definition Like lower ('%female%')
