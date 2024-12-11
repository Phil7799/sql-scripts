select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
from totalrequests2024.jan_2024 j 
where CITY = 'NAIROBI'
and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by DATE_, TRIPTYPE , CATEGORY
union all 
select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
from totalrequests2024.feb_2024 j 
where CITY = 'NAIROBI'
and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by DATE_, TRIPTYPE , CATEGORY
union all 
select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
from totalrequests2024.mar_2024 j 
where CITY = 'NAIROBI'
and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by DATE_, TRIPTYPE , CATEGORY
union all 
select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
from totalrequests2024.apr_2024 j 
where CITY = 'NAIROBI'
and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by DATE_, TRIPTYPE , CATEGORY
union all 
select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
from totalrequests2024.may_2024 j 
where CITY = 'NAIROBI'
and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by DATE_, TRIPTYPE , CATEGORY
union all 
select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
from totalrequests2024.jun_2024 j 
where CITY = 'NAIROBI'
and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by DATE_, TRIPTYPE , CATEGORY
union all 
select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
from totalrequests2024.jul_2024 j 
where CITY = 'NAIROBI'
and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by DATE_, TRIPTYPE , CATEGORY
union all 
select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
from totalrequests2024.aug_2024 j 
where CITY = 'NAIROBI'
and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
group by DATE_, TRIPTYPE , CATEGORY
-- union all 
-- select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
-- from totalrequests2024.sep_2024 j 
-- where CITY = 'NAIROBI'
-- and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
-- and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
-- group by DATE_, TRIPTYPE , CATEGORY
-- union all 
-- select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
-- from totalrequests2024.oct_2024 j 
-- where CITY = 'NAIROBI'
-- and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
-- and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
-- group by DATE_, TRIPTYPE , CATEGORY
-- union all 
-- select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
-- from totalrequests2024.nov_2024 j 
-- where CITY = 'NAIROBI'
-- and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
-- and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
-- group by DATE_, TRIPTYPE , CATEGORY
-- union all 
-- select DATE_, TRIPTYPE , CATEGORY , count(DAY_) as counts_
-- from totalrequests2024.dec_2024 j 
-- where CITY = 'NAIROBI'
-- and CATEGORY in ('Driver Cancellation' , 'No Drivers Found' , 'Rider Cancellation')
-- and VEHICLETYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
-- group by DATE_, TRIPTYPE , CATEGORY


