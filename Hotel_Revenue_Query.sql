with hotels as (
 SELECT * FROM [dbo].['2018$']
 UNION
 SELECT * FROM [dbo].['2019$']
UNION
SELECT * FROM [dbo].['2020$'])







SELECT arrival_date_year,
sum((stays_in_week_nights+stays_in_weekend_nights)*adr) as Revenue
from hotels
group by  arrival_date_year