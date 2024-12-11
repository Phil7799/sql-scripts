-- --product sheet corporate update--
WITH combined_data AS (
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_jan gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA') 
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_feb gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_mar gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_apr gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_may gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_jun gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_jul gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_aug gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_sep gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_oct gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_nov gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2023.globaltrips_2023_dec gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_jan gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_feb gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_mar gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_apr gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_may gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_Jun gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_Jul gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    UNION ALL
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.DATED AS trip_date,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_Aug gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
)
SELECT corporate_,
       associate_,
       MIN(trip_date) AS startdate_,
       SUM(revenue_) AS revenue_
FROM combined_data
GROUP BY corporate_,associate_
order by revenue_ desc;

with jundata as
(
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_Jul gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    and gj.DATED between '2024-07-29' and '2024-07-31'
    union all
    SELECT ac.Corporate AS corporate_,
           ac.Corporate_Associate as associate_,
           gj.Revenue AS revenue_
    FROM globaltrips2024.globaltrips_2024_Aug gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    and gj.DATED between '2024-08-01' and '2024-08-04'   
)
select corporate_,
       associate_,
       SUM(revenue_) AS revenue_
from jundata
group by corporate_,associate_
order by revenue_ desc;