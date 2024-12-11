with combined_data as (
    select 
        DATED, 
        count(TRIP_ID) as trips
    from (
        select * from globaltrips2023.globaltrips_2023_jan
        union all
        select * from globaltrips2023.globaltrips_2023_feb
        union all
        select * from globaltrips2023.globaltrips_2023_mar
        union all
        select * from globaltrips2023.globaltrips_2023_apr
        union all
        select * from globaltrips2023.globaltrips_2023_may
        union all
        select * from globaltrips2023.globaltrips_2023_jun
        union all
        select * from globaltrips2023.globaltrips_2023_jul
        union all
        select * from globaltrips2023.globaltrips_2023_aug
        union all
        select * from globaltrips2023.globaltrips_2023_sep
        union all
        select * from globaltrips2023.globaltrips_2023_oct
        union all
        select * from globaltrips2023.globaltrips_2023_nov
        union all
        select * from globaltrips2023.globaltrips_2023_dec
    ) gj
    where gj.COUNTRY = 'KENYA'
    and gj.RIDE_TYPE = 'CORPORATE TRIP'
    and gj.VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG', 'SHUTTLE', 'LITTLEBODA')
    group by gj.DATED
)
select 
    month(combined_data.DATED) as month_,
    sum(combined_data.trips) as total_trips
from combined_data
group by month(combined_data.DATED);
















