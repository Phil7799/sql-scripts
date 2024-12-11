with combined_data as (
    select 
        gj.DATED, 
        gj.RIDER, 
        ac.Corporate as corporate_, 
        count(gj.TRIP_ID) as trips, 
        sum(gj.Revenue) as rev_
    from (
        select * from globaltrips2022.globaltrips_2022_jan
        union all
        select * from globaltrips2022.globaltrips_2022_feb
        union all
        select * from globaltrips2022.globaltrips_2022_mar
        union all
        select * from globaltrips2022.globaltrips_2022_apr
        union all
        select * from globaltrips2022.globaltrips_2022_may
        union all
        select * from globaltrips2022.globaltrips_2022_jun
        union all
        select * from globaltrips2022.globaltrips_2022_jul
        union all
        select * from globaltrips2022.globaltrips_2022_aug
        union all
        select * from globaltrips2022.globaltrips_2022_sep
        union all
        select * from globaltrips2022.globaltrips_2022_oct
        union all
        select * from globaltrips2022.globaltrips_2022_nov
        union all
        select * from globaltrips2022.globaltrips_2022_dec
    ) gj
    join all_corporates.all_corporates ac 
    on gj.CORPORATE_ID = ac.CorporateID 
    where gj.COUNTRY = 'KENYA'
--     and gj.RIDE_TYPE = 'CORPORATE TRIP'
    and gj.VEHICLE_TYPE in ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG', 'LITTLEBODA' , 'BAJAJ' , 'SHUTTLE', 'COASTER')
    group by gj.DATED, gj.RIDER, ac.Corporate
)
select 
    month(combined_data.DATED) as month_,
    count(distinct combined_data.RIDER) as countrider,
    count(distinct combined_data.corporate_) as corporates,
    sum(combined_data.trips) as total_trips,
    sum(combined_data.rev_) as total_revenue
from combined_data
group by month(combined_data.DATED);


SELECT 
    RIDER, 
    SUM(TRIPS) AS total_trips
FROM 
    (
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_jan
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER        
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_feb
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_mar
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_apr
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_may
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_jun
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_jul
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_aug
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_sep
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
--         SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
--         FROM globaltrips2022.globaltrips_2022_oct
--         WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
--         GROUP BY RIDER
--         UNION ALL        
--         SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
--         FROM globaltrips2022.globaltrips_2022_nov
--         WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
--         GROUP BY RIDER
--         UNION ALL        
--         SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
--         FROM globaltrips2022.globaltrips_2022_dec
--         WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
--         GROUP BY RIDER
--         UNION ALL
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_jan
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER        
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_feb
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_mar
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_apr
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_may
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_jun
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_jul
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_aug
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_sep
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_oct
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_nov
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_dec
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_jan
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER        
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_feb
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_mar
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_apr
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_may
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_jun
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_jul
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_aug
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_sep
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_oct
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_nov
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
        UNION ALL        
        SELECT RIDER, COUNT(TRIP_ID) AS TRIPS
        FROM globaltrips2022.globaltrips_2022_dec
        WHERE COUNTRY = 'KENYA' AND PAYMENT = 'CARD'
        GROUP BY RIDER
    ) AS combined_trips
GROUP BY RIDER;

select a.DRIVER , dt.Mobile_Number , count(a.DAY_) as totals_ 
from totalrequests2024.aug_2024 a 
join all_drivers.drivers_table dt on a.DRIVER = dt.Email 
where a.COUNTRY = 'KENYA'
and a.VEHICLETYPE in ('PARCELS' , 'LITTLEBODA')
and a.CATEGORY = 'Timeout'
and a.DATE_ between '2024-08-26' and '2024-08-31'
group by a.DRIVER , dt.Mobile_Number
union all
select a.DRIVER , dt.Mobile_Number , count(a.DAY_) as totals_ 
from totalrequests2024.sep_2024 a 
join all_drivers.drivers_table dt on a.DRIVER = dt.Email 
where a.COUNTRY = 'KENYA'
and a.VEHICLETYPE in ('PARCELS' , 'LITTLEBODA')
and a.CATEGORY = 'Timeout'
and a.DATE_ between '2024-09-01' and '2024-09-01'
group by a.DRIVER , dt.Mobile_Number;

select * 
from globaltrips2022.globaltrips_2022_may gm 
join all_corporates.all_corporates ac on gm.CORPORATE_ID = ac.CorporateID 
where ac.Corporate like "%NCBA%"
union all
select * 
from globaltrips2022.globaltrips_2022_jun gm 
join all_corporates.all_corporates ac on gm.CORPORATE_ID = ac.CorporateID 
where ac.Corporate like "%NCBA%"
union all 
select * 
from globaltrips2022.globaltrips_2022_jul gm 
join all_corporates.all_corporates ac on gm.CORPORATE_ID = ac.CorporateID 
where ac.Corporate like "%NCBA%"
union all
select * 
from globaltrips2022.globaltrips_2022_aug gm 
join all_corporates.all_corporates ac on gm.CORPORATE_ID = ac.CorporateID 
where ac.Corporate like "%NCBA%"
-- end code --

WITH combinedata AS (
    SELECT ac.Corporate AS corporate_name, gj.DATED AS dated
    FROM (
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_jan
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'        
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_feb
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_mar
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_apr
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_may
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_jun
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_jul
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_aug
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_sep
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_oct
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_nov
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATE_
        FROM globaltrips2021.globaltrips_2021_dec
        WHERE COUNTRY = 'KENYA' AND TRIP_TYPE = 'CORPORATE TRIP'
        UNION ALL
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_jan
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'        
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_feb
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_mar
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_apr
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_may
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_jun
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_jul
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_aug
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_sep
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_oct
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_nov
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_dec
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_jan
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'        
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_feb
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_mar
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_apr
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_may
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_jun
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_jul
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_aug
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_sep
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_oct
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_nov
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_dec
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_jan
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'        
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_feb
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_mar
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_apr
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_may
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_jun
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_jul
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_aug
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
        UNION ALL        
        SELECT CORPORATE_ID, DATED
        FROM globaltrips2022.globaltrips_2022_sep
        WHERE COUNTRY = 'KENYA' AND RIDE_TYPE = 'CORPORATE TRIP'
    ) gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
)
SELECT combinedata.corporate_name, MAX(combinedata.dated) AS max_date
FROM combinedata
GROUP BY combinedata.corporate_name;
-- end code --

SELECT 
    month_,
--     trip_type,
--     city_,
    total_drivers,
    driver_trips,
    Total,
    Trips_,
    DriverCancellations_,
    RiderCancellations_,
    Timeouts_,
    no_drivers_found,
    FulfillmentRate,
    AcceptanceRate
FROM (
    SELECT 
        month(DATE_) as month_,
--         TRIPTYPE as trip_type,
--         CITY as city_,
        count(distinct DRIVER) as total_drivers,
        count(distinct case when CATEGORY = 'Trips' then DRIVER END) as driver_trips,
        COUNT(*) AS Total,
        SUM(CATEGORY = 'Trips') AS Trips_,
        SUM(CATEGORY = 'Driver Cancellation') AS DriverCancellations_,
        SUM(CATEGORY = 'Rider Cancellation') AS RiderCancellations_,
        SUM(CATEGORY = 'Timeout') AS Timeouts_,
        SUM(CATEGORY = 'No Drivers Found') AS no_drivers_found,
        ROUND(SUM(CATEGORY = 'Trips') * 100.0 / NULLIF(SUM(CATEGORY IN ('Trips', 'Driver Cancellation', 'Rider Cancellation' , 'No Drivers Found')), 0), 2) AS FulfillmentRate,
        ROUND(SUM(CATEGORY = 'Trips') * 100.0 / NULLIF(SUM(CATEGORY IN ('Trips', 'Driver Cancellation', 'Rider Cancellation', 'Timeout')), 0), 2) AS AcceptanceRate
    FROM 
        (SELECT * FROM totalrequests2024.jan_2024
         UNION ALL
         SELECT * FROM totalrequests2024.feb_2024
         UNION ALL
         SELECT * FROM totalrequests2024.mar_2024
         UNION ALL
         SELECT * FROM totalrequests2024.apr_2024
         UNION ALL
         SELECT * FROM totalrequests2024.may_2024
         UNION ALL
         SELECT * FROM totalrequests2024.jun_2024
         UNION ALL
         SELECT * FROM totalrequests2024.jul_2024
         UNION ALL
         SELECT * FROM totalrequests2024.aug_2024
         UNION ALL
         SELECT * FROM totalrequests2024.sep_2024
         UNION ALL
         SELECT * FROM totalrequests2024.oct_2024) m 
--     WHERE m.VEHICLETYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG', 'LITTLEBODA' , 'BAJAJ' , 'SHUTTLE', 'COASTER') 
        WHERE m.COUNTRY = 'TANZANIA'
--         and m.TRIPTYPE = 'CORPORATE TRIP'
    GROUP BY month(DATE_)
) AS subquery
ORDER BY 
    month_ ASC;
-- end of supply summary requests --
   
select count(distinct RIDER) 
from globaltrips2024.globaltrips_2024_oct gs 
-- join all_corporates.all_corporates ac on gs.CORPORATE_ID = ac.CorporateID 
where gs.COUNTRY = 'TANZANIA'
-- and gs.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG', 'LITTLEBODA' , 'BAJAJ' , 'SHUTTLE', 'COASTER') 
and gs.RIDE_TYPE = 'RETAIL TRIP'
-- and gs.PROMO_CODE = 'CONCOURS2024'
-- and ac.Corporate = 'PREMIER BANK KENYA LIMITED'
-- group by gs.PROMO_CODE;

select count(distinct Corporate) 
from all_corporates.all_corporates ac 
where Country = 'TANZANIA'
and year(CreatedOn) = '2024'
and month(CreatedOn) = '10';
-- end summary tracker for corporates code --


SELECT MONTHNAME(ga.DATED) AS month, COUNT(DISTINCT ga.RIDER) AS churned_
FROM globaltrips2022.globaltrips_2022_aug ga
LEFT JOIN globaltrips2022.globaltrips_2022_sep gs ON ga.RIDER = gs.RIDER 
      AND gs.DATED >= '2024-09-01' AND gs.DATED < '2024-10-01'
WHERE ga.DATED >= '2024-08-01' AND ga.DATED < '2024-09-01'
AND gs.RIDER IS NULL
GROUP BY MONTHNAME(ga.DATED)
union all 
select MONTHNAME(ga.DATED) AS month, COUNT(DISTINCT ga.RIDER) AS churned_
from globaltrips2022.globaltrips_2022_jul ga
left join globaltrips2022.globaltrips_2022_aug gj on ga.RIDER = gj.RIDER
where gj.RIDER is null
GROUP BY MONTHNAME(ga.DATED)
-- end of churn riders check --

WITH combinedata AS (
    SELECT 
        gj.DATED, 
        gj.TOLLFEES AS toll_, 
        gj.PARKING_FEE AS p_fee, 
        gj.PAYMENT_AMT AS amnt_,
        gj.TRIP_TIME,
        gj.TRIP_DISTANCE,
        ac.Name, 
        ac.Corporate
    FROM (
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_jan 
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_feb 
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_mar 
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_apr
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_may 
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_jun
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_jul 
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_aug
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_sep
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_oct
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_nov
        WHERE COUNTRY = 'UGANDA'
        UNION ALL
        SELECT DATED, TOLLFEES, PARKING_FEE, PAYMENT_AMT, CORPORATE_ID, TRIP_TIME, TRIP_DISTANCE
        FROM globaltrips2022.globaltrips_2022_dec 
        WHERE COUNTRY = 'UGANDA'
    ) AS gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    where ac.Corporate like '%TELECOMMUNICATIONS%'
)
SELECT 
    MONTHNAME(combinedata.DATED) AS month, 
    SUM(combinedata.toll_) AS total_toll, 
    SUM(combinedata.p_fee) AS total_parking_fee, 
    SUM(combinedata.amnt_) AS total_amount,
    avg(combinedata.TRIP_TIME),
    avg(combinedata.TRIP_DISTANCE),
    combinedata.Name, 
    combinedata.Corporate
FROM combinedata
GROUP BY 
    combinedata.Name, 
    combinedata.Corporate, 
    MONTHNAME(combinedata.DATED)
ORDER BY month;


-- start of churn drivers --
select distinct j.DRIVER, dt.Mobile_Number, j.CITY
from 
(
   select DRIVER, CITY
   from totalrequests2024.jan_2024
   where COUNTRY = 'KENYA'
   union all 
   select DRIVER, CITY
   from totalrequests2024.feb_2024
   where COUNTRY = 'KENYA'
   union all 
   select DRIVER, CITY
   from totalrequests2024.mar_2024
   where COUNTRY = 'KENYA'
   union all 
   select DRIVER, CITY
   from totalrequests2024.apr_2024
   where COUNTRY = 'KENYA'
   union all 
   select DRIVER, CITY
   from totalrequests2024.may_2024
   where COUNTRY = 'KENYA'
   union all 
   select DRIVER, CITY
   from totalrequests2024.jun_2024
   where COUNTRY = 'KENYA'
   union all 
   select DRIVER, CITY
   from totalrequests2024.jul_2024
   where COUNTRY = 'KENYA'
   union all 
   select DRIVER, CITY
   from totalrequests2024.aug_2024
   where COUNTRY = 'KENYA'
   union all 
   select DRIVER, CITY
   from totalrequests2024.sep_2024
   where COUNTRY = 'KENYA'
   union all 
   select DRIVER, CITY
   from totalrequests2024.oct_2024
   where COUNTRY = 'KENYA'
) as j
join all_drivers.drivers_table dt on j.DRIVER = dt.Email;
-- end of churn drivers --

select oo.EMAIL, 
       dt.Mobile_Number, 
       go2.CITY,
       o.VEHICLETYPE,
       avg(oo.Total_Hrs) as totalHrs_, 
       count(go2.TRIP_ID) as trips_, 
       count(o.VEHICLETYPE) as requests_
from online_hours.online_oct_2024 oo
join all_drivers.drivers_table dt 
     on oo.EMAIL = dt.Email
join globaltrips2022.globaltrips_2022_oct go2 
     on oo.EMAIL = go2.DRIVER
join totalrequests2024.oct_2024 o 
     on oo.EMAIL = o.DRIVER 
where CAST(oo.DATE_ as DATE) >= '2024-10-18' 
     and go2.DATED >= '2024-10-18'
     and o.DATE_ >= '2024-10-18'
group by oo.EMAIL, dt.Mobile_Number, go2.CITY, o.VEHICLETYPE
order by avg(oo.Total_Hrs) desc;


-- to calculate/check loan --

SELECT 
    Driver,
    RIDE_TYPE,
    SUM(LoanAmount) AS TotalLoanAmount
FROM (
    SELECT 
        Driver,
        RIDE_TYPE,
        SUM(PAYMENT_AMT) AS TotalRevenue,
        CASE
            WHEN RIDE_TYPE = 'CORPORATE TRIP' THEN
                CASE
                    WHEN SUM(PAYMENT_AMT) BETWEEN 0 AND 5000 THEN 1250
                    WHEN SUM(PAYMENT_AMT) BETWEEN 5000 AND 10999 THEN 2750
                    WHEN SUM(PAYMENT_AMT) BETWEEN 11000 AND 20999 THEN 5250
                    WHEN SUM(PAYMENT_AMT) BETWEEN 21000 AND 30999 THEN 7750
                    ELSE 0
                END
            WHEN RIDE_TYPE = 'RETAIL TRIP' THEN
                CASE
                    WHEN SUM(PAYMENT_AMT) BETWEEN 0 AND 5000 THEN 750
                    WHEN SUM(PAYMENT_AMT) BETWEEN 5000 AND 9999 THEN 1500
                    WHEN SUM(PAYMENT_AMT) BETWEEN 10000 AND 17999 THEN 2700
                    WHEN SUM(PAYMENT_AMT) BETWEEN 18000 AND 19999 THEN 3000
                    ELSE 0
                END
            ELSE 0
        END AS LoanAmount
    FROM
        globaltrips2022.globaltrips_2022_oct gj 
    WHERE
        DATED >= DATE_SUB(CURDATE(), INTERVAL 20 DAY)
    AND
        DRIVER = 'Pkimotho25@gmail.com'
    GROUP BY
        Driver, RIDE_TYPE
) AS LoanCalculations
GROUP BY
    Driver, RIDE_TYPE;


-- Prefered driver fraud detection -- 

WITH RiderTrips AS (
    -- Count total trips, amount, and distinct drivers per rider
    SELECT
        RIDER,
        COUNT(*) AS TotalTrips,
        SUM(PAYMENT_AMT) AS TotalAmount,
        COUNT(DISTINCT DRIVER) AS DistinctDrivers
    FROM
        globaltrips2022.globaltrips_2022_oct
    GROUP BY
        RIDER
),
FavoriteTrips AS (
    -- Count trips where 'Favorite' is 'yes' per rider
    SELECT
        RIDER,
        COUNT(*) AS FavoriteTrips,
        COUNT(DISTINCT DRIVER) AS DistinctDriversFavorite
    FROM
        globaltrips2022.globaltrips_2022_oct
    WHERE
        Favorite = 'yes'
    GROUP BY
        RIDER
),
DriverFavoriteTrips AS (
    -- Count trips where 'Favorite' is 'yes' per driver
    SELECT
        DRIVER,
        COUNT(*) AS DriverFavoriteTrips
    FROM
        globaltrips2022.globaltrips_2022_oct
    WHERE
        Favorite = 'yes'
    GROUP BY
        DRIVER
)
-- Join the results
SELECT
    r.RIDER,
    r.TotalTrips,
    r.TotalAmount,
    r.DistinctDrivers,
    f.FavoriteTrips,
    f.DistinctDriversFavorite,
    d.DriverFavoriteTrips,
    CASE
        -- Detect potential fraud cases where 100% trips are from the same driver and favorite is 'yes'
        WHEN r.TotalTrips = f.FavoriteTrips
             AND r.DistinctDrivers = 1
             AND f.DistinctDriversFavorite = 1 THEN 'Fraud'
        ELSE 'Legit'
    END AS FraudStatus
FROM
    RiderTrips r
LEFT JOIN
    FavoriteTrips f ON r.RIDER = f.RIDER
LEFT JOIN
    DriverFavoriteTrips d ON r.RIDER = d.DRIVER;
    
-- end of prefered driver fraud detection --
   
with combined_global_trips as (
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_jan gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_feb gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_mar gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_apr gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_may gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_jun gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_jul gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_aug gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_sep gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_oct gj
    union all
    select gj.TRIP_ID, gj.Revenue, gj.CORPORATE_ID, gj.COUNTRY, gj.VEHICLE_TYPE
    from globaltrips2024.globaltrips_2024_nov gj
)
select 
    ac.Corporate_Associate as corp_ass, 
    count(distinct ac.Corporate) as corp_onboard,
    count(gj.TRIP_ID) as trips_done,
    sum(gj.Revenue) as revenue
from combined_global_trips gj
join all_corporates.all_corporates ac 
    on gj.CORPORATE_ID = ac.CorporateID
where 
    gj.COUNTRY = 'KENYA'
    and year(ac.CreatedOn) = 2024
    and gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG', 'LITTLEBODA' , 'SHUTTLE', 'COASTER') 
group by ac.Corporate_Associate
order by sum(gj.Revenue) desc;

-- fulfilment rate date and city --
SELECT 
    month_,
--     trip_type,
--     city_,
    total_drivers,
    driver_trips,
    Total,
    Trips_,
    DriverCancellations_,
    RiderCancellations_,
    Timeouts_,
    no_drivers_found,
    FulfillmentRate,
    AcceptanceRate
FROM (
    SELECT 
        DATE_ as month_,
--         TRIPTYPE as trip_type,
--         CITY as city_,
        count(distinct DRIVER) as total_drivers,
        count(distinct case when CATEGORY = 'Trips' then DRIVER END) as driver_trips,
        COUNT(*) AS Total,
        SUM(CATEGORY = 'Trips') AS Trips_,
        SUM(CATEGORY = 'Driver Cancellation') AS DriverCancellations_,
        SUM(CATEGORY = 'Rider Cancellation') AS RiderCancellations_,
        SUM(CATEGORY = 'Timeout') AS Timeouts_,
        SUM(CATEGORY = 'No Drivers Found') AS no_drivers_found,
        ROUND(SUM(CATEGORY = 'Trips') * 100.0 / NULLIF(SUM(CATEGORY IN ('Trips', 'Driver Cancellation', 'Rider Cancellation' , 'No Drivers Found')), 0), 2) AS FulfillmentRate,
        ROUND(SUM(CATEGORY = 'Trips') * 100.0 / NULLIF(SUM(CATEGORY IN ('Trips', 'Driver Cancellation', 'Rider Cancellation', 'Timeout')), 0), 2) AS AcceptanceRate
    FROM 
        (SELECT * FROM totalrequests2023.nov_2023) m 
    WHERE m.VEHICLETYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG', 'LITTLEBODA' , 'BAJAJ' , 'SHUTTLE', 'COASTER') 
        and m.CITY = 'MOMBASA'
        and m.TRIPTYPE = 'CORPORATE TRIP'
    GROUP BY DATE_
) AS subquery
ORDER BY 
    month_ ASC;
   
-- trips check by year --
with 2021_trips as 
(
     select year(DATED) as year_, 
     count(TRIP_ID) as trips_, 
     count(distinct RIDER) as riders_,
     sum(PAYMENT_AMT) as revenue_
     from globaltrips2021.globaltrips_2021_dec gd
     where COUNTRY = 'KENYA'
     and TRIP_TYPE = 'RETAIL TRIP' and DATED between '2021-12-01' and '2021-12-08'
     and VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG') 
     group by year(DATED)
),
2022_trips as 
(
     select year(DATED) as year_, 
     count(TRIP_ID) as trips_, 
     count(distinct RIDER) as riders_,
     sum(PAYMENT_AMT) as revenue_
     from globaltrips2022.globaltrips_2022_dec gd
     where COUNTRY = 'KENYA'
     and RIDE_TYPE = 'RETAIL TRIP' and DATED between '2022-12-01' and '2022-12-08'
     and VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG') 
     group by year(DATED)
),
2023_trips as 
(
     select year(DATED) as year_, 
     count(TRIP_ID) as trips_, 
     count(distinct RIDER) as riders_,
     sum(PAYMENT_AMT) as revenue_
     from globaltrips2023.globaltrips_2023_dec gd
     where COUNTRY = 'KENYA'
     and RIDE_TYPE = 'RETAIL TRIP'and DATED between '2023-12-01' and '2023-12-08'
     and VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG') 
     group by year(DATED)
),
2024_trips as 
(
     select year(DATED) as year_, 
     count(TRIP_ID) as trips_, 
     count(distinct RIDER) as riders_,
     sum(PAYMENT_AMT) as revenue_
     from globaltrips2024.globaltrips_2024_dec gd
     where COUNTRY = 'KENYA'
     and RIDE_TYPE = 'RETAIL TRIP'and DATED between '2024-12-01' and '2024-12-08'
     and VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG') 
     group by year(DATED)
)
select r.year_,r.trips_,r.riders_,r.revenue_
from 2021_trips r
union 
select s.year_,s.trips_,s.riders_,s.revenue_
from 2022_trips s
union 
select t.year_,t.trips_,t.riders_,t.revenue_
from 2023_trips t
union 
select u.year_,u.trips_,u.riders_,u.revenue_
from 2024_trips u




















