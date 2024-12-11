with combined_data as 
(
select DATED as dated_, Revenue as rev_
from globaltrips2024.globaltrips_2024_jan gj 
where COUNTRY = 'KENYA'
and RIDE_TYPE = 'CORPORATE TRIP'
and VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE')
union all
select DATED as dated_, Revenue as rev_
from globaltrips2024.globaltrips_2024_feb gj 
where COUNTRY = 'KENYA'
and RIDE_TYPE = 'CORPORATE TRIP'
and VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE')
union all
select DATED as dated_, Revenue as rev_
from globaltrips2024.globaltrips_2024_mar gj 
where COUNTRY = 'KENYA'
and RIDE_TYPE = 'CORPORATE TRIP'
and VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE')
union all
select DATED as dated_, Revenue as rev_
from globaltrips2024.globaltrips_2024_apr gj 
where COUNTRY = 'KENYA'
and RIDE_TYPE = 'CORPORATE TRIP'
and VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE')
union all
select DATED as dated_, Revenue as rev_
from globaltrips2024.globaltrips_2024_may gj 
where COUNTRY = 'KENYA'
and RIDE_TYPE = 'CORPORATE TRIP'
and VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE')
union all
select DATED as dated_, Revenue as rev_
from globaltrips2024.globaltrips_2024_jun gj 
where COUNTRY = 'KENYA'
and RIDE_TYPE = 'CORPORATE TRIP'
and VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE')
)
select monthname(dated_) as month_, sum(rev_)
from combined_data
group by monthname(dated_)