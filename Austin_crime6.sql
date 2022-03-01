--Austin Crime Data
--Austin_crime
 
--Total Number of  Cleared Crimes  related to Theft by Arrest. 

select count(clearance_status) as Number_of_Not_clearance_Cases 
from  `bigquery-public-data.austin_crime.crime` where primary_type = 'Theft' 
and clearance_status='Cleared by Arrest'
