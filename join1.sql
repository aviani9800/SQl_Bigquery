--Births Data Summary
--county_natality

--Total Births between 2016-2018, where father and mother are either Asian or White,
--but both are neither Asian nor White at the same time.



SELECT T1.Year,SUM (T1.Births) AS Total_Numbers_of_Birth
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_father_race`as T1
LEFT JOIN`bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race`AS T2 
ON T1.County_of_Residence=T2.County_of_Residence
WHERE Fathers_Single_Race ="Asian" AND Mothers_Single_Race="White" OR
Fathers_Single_Race ="White" AND Mothers_Single_Race="Asian"
GROUP BY 1
ORDER BY 2


