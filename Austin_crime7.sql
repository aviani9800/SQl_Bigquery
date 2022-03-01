--Austin Crime Data
--Austin_crime

--List Of Address By Crime Rate in Austin.

SELECT UPPER(address) as Address, COUNT(address)as Number_of_Crimes
FROM `bigquery-public-data.austin_crime.crime`
GROUP BY 1
ORDER BY 2 desc 



