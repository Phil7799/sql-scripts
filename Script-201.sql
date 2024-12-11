with combinedata as 
(
select ac.CreatedOn as date_onboard, 
       ac.Corporate as corporate_,
       ac.Corporate_Associate as Corporate_Associate,
       gj.TRIP_ID as trips_,
       gj.Revenue as revenue
from globaltrips2024.globaltrips_2024_jan gj 
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where gj.COUNTRY = 'KENYA'
and gj.RIDE_TYPE = 'CORPORATE TRIP'
and YEAR(ac.CreatedOn) = '2024'
and gj.VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
union all 
select ac.CreatedOn as date_onboard, 
       ac.Corporate as corporate_,
       ac.Corporate_Associate as Corporate_Associate,
       gj.TRIP_ID as trips_,
       gj.Revenue as revenue
from globaltrips2024.globaltrips_2024_feb gj 
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where gj.COUNTRY = 'KENYA'
and gj.RIDE_TYPE = 'CORPORATE TRIP'
and YEAR(ac.CreatedOn) = '2024'
and gj.VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
union all 
select ac.CreatedOn as date_onboard, 
       ac.Corporate as corporate_,
       ac.Corporate_Associate as Corporate_Associate,
       gj.TRIP_ID as trips_,
       gj.Revenue as revenue
from globaltrips2024.globaltrips_2024_mar gj 
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where gj.COUNTRY = 'KENYA'
and gj.RIDE_TYPE = 'CORPORATE TRIP'
and YEAR(ac.CreatedOn) = '2024'
and gj.VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
union all 
select ac.CreatedOn as date_onboard, 
       ac.Corporate as corporate_,
       ac.Corporate_Associate as Corporate_Associate,
       gj.TRIP_ID as trips_,
       gj.Revenue as revenue
from globaltrips2024.globaltrips_2024_apr gj 
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where gj.COUNTRY = 'KENYA'
and gj.RIDE_TYPE = 'CORPORATE TRIP'
and YEAR(ac.CreatedOn) = '2024'
and gj.VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
union all 
select ac.CreatedOn as date_onboard, 
       ac.Corporate as corporate_,
       ac.Corporate_Associate as Corporate_Associate,
       gj.TRIP_ID as trips_,
       gj.Revenue as revenue
from globaltrips2024.globaltrips_2024_may gj 
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where gj.COUNTRY = 'KENYA'
and gj.RIDE_TYPE = 'CORPORATE TRIP'
and YEAR(ac.CreatedOn) = '2024'
and gj.VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
union all 
select ac.CreatedOn as date_onboard, 
       ac.Corporate as corporate_,
       ac.Corporate_Associate as Corporate_Associate,
       gj.TRIP_ID as trips_,
       gj.Revenue as revenue
from globaltrips2024.globaltrips_2024_jun gj 
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where gj.COUNTRY = 'KENYA'
and gj.RIDE_TYPE = 'CORPORATE TRIP'
and YEAR(ac.CreatedOn) = '2024'
and gj.VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
union all 
select ac.CreatedOn as date_onboard, 
       ac.Corporate as corporate_,
       ac.Corporate_Associate as Corporate_Associate,
       gj.TRIP_ID as trips_,
       gj.Revenue as revenue
from globaltrips2024.globaltrips_2024_jul gj 
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where gj.COUNTRY = 'KENYA'
and gj.RIDE_TYPE = 'CORPORATE TRIP'
and YEAR(ac.CreatedOn) = '2024'
and gj.VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
)
select date_onboard, 
       corporate_, 
       Corporate_Associate,
       count(trips_) as total_trips, 
       sum(revenue) as total_revenue
from combinedata
group by date_onboard,
         corporate_, 
         Corporate_Associate;
         