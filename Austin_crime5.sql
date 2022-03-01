--Austin Crime Data
--Austin_crime

--Number of Not Clearance Crimes in Austin 

select count(clearance_status) as Not_Clearance_case 
from `bigquery-public-data.austin_crime.crime` where clearance_status ="Not cleared"



 
