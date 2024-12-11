select DRIVER , RIDE_TYPE , count(TRIP_ID) 
from globaltrips2024.globaltrips_2024_jun gj 
where COUNTRY = 'KENYA'
group by DRIVER , RIDE_TYPE