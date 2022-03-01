--Austin Crime Data
--Austin_crime
 
--Total Number of  Cleared Crimes  related to Theft by Arrest. 

SELECT UPPER(primary_type) AS Crime, COUNT(primary_type) AS Number_of_Crimes
FROM `bigquery-public-data.austin_crime.crime`
GROUP BY 1
ORDER BY 2 desc 
