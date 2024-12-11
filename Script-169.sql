SELECT rider , count(TRIP_ID)
FROM globaltrips2024.globaltrips_2024_jun gj 
where COUNTRY = 'KENYA'
and RIDE_TYPE = 'RETAIL TRIP'
group by RIDER 
order by count(TRIP_ID) desc;

