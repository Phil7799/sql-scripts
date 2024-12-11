select ac.Corporate , ac.Industry , ac.Assignee , month(ga.DATED) , sum(ga.Revenue) 
from globaltrips2024.globaltrips_2024_nov ga 
join all_corporates.all_corporates ac on ga.CORPORATE_ID = ac.CorporateID 
where ga.COUNTRY = 'KENYA'
and ga.RIDE_TYPE = 'CORPORATE TRIP'
and ga.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
-- and ga.DATED between '2024-08-12' and '2024-08-18'
group by ac.Corporate , ac.Industry , ac.Assignee , month(ga.DATED);

with gj as 
(
select DATE_ ,DRIVER 
from totalrequests2024.jan_2024 a 
where COUNTRY = 'TANZANIA'
and CATEGORY = 'Trips'
union all
select DATE_ ,DRIVER 
from totalrequests2024.feb_2024 a
where COUNTRY = 'TANZANIA'
and CATEGORY = 'Trips'
union all
select DATE_ ,DRIVER 
from totalrequests2024.mar_2024 a 
where COUNTRY = 'TANZANIA'
and CATEGORY = 'Trips'
union all
select DATE_ ,DRIVER 
from totalrequests2024.apr_2024 a 
where COUNTRY = 'TANZANIA'
and CATEGORY = 'Trips'
union all
select DATE_ ,DRIVER
from totalrequests2024.may_2024 a 
where COUNTRY = 'TANZANIA'
and CATEGORY = 'Trips'
union all
select DATE_ ,DRIVER 
from totalrequests2024.jun_2024 a 
where COUNTRY = 'TANZANIA'
and CATEGORY = 'Trips'
union all
select DATE_ ,DRIVER
from totalrequests2024.jul_2024 a 
where COUNTRY = 'TANZANIA'
and CATEGORY = 'Trips'
union all
select DATE_ ,DRIVER
from totalrequests2024.aug_2024 a 
where COUNTRY = 'TANZANIA'
and CATEGORY = 'Trips'
)
select month(DATE_), count(distinct DRIVER) 
from gj
group by month(DATE_);

select monthname(DATED), count(TRIP_ID) as trips_
from globaltrips2024.globaltrips_2024_sep ga 
where COUNTRY = 'KENYA'
and RIDE_TYPE = 'RETAIL TRIP'
and DATED between '2024-09-01' and '2024-09-05'
and VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by monthname(DATED)
union all
select monthname(DATED), count(TRIP_ID) as trips_
from globaltrips2024.globaltrips_2024_aug ga 
where COUNTRY = 'KENYA'
and RIDE_TYPE = 'RETAIL TRIP'
and DATED between '2024-08-01' and '2024-08-05'
and VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by monthname(DATED);

select DRIVER , dt.Mobile_Number , count(DAY_) as total_requests,
       count(case when CATEGORY = 'Trips' then DAY_ end) as trips_,
       count(case when CATEGORY = 'Timeout' then DAY_ end) as timeouts_,
       count(case when CATEGORY = 'Driver Cancellation' then DAY_ end) as driver_cancs,
       count(case when CATEGORY = 'Rider Cancellation' then DAY_ end) as rider_cancs
from totalrequests2024.nov_2024 s 
join all_drivers.drivers_table dt on s.DRIVER = dt.Email 
where COUNTRY = 'KENYA'
and VEHICLETYPE like '%boda%' or VEHICLETYPE like '%parcel%'
and CATEGORY = 'Trips'
group by DRIVER ,dt.Mobile_Number
-- 2 wheeler code cancellations --





