select "MONTH" ,"PROMO CODE" ,COUNT("TRIP ID") as trips , SUM(REVENUE) as revenue,SUM(PROMO) 
from global_trips_q1 gtq 
where COUNTRY = 'KENYA'
and "RIDE TYPE" = 'RETAIL TRIP'
group by "MONTH" , "PROMO CODE" 
UNION 
select "MONTH" ,"PROMO CODE" , COUNT("TRIP ID") as trips , SUM(REVENUE) as revenue,SUM(PROMO) 
from global_trips_q2 gtq2 
where COUNTRY = 'KENYA'
and "RIDE TYPE" = 'RETAIL TRIP'
group by "MONTH" , "PROMO CODE" 