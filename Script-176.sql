WITH combined_trips AS (
    SELECT g.CORPORATE_ID,
           g.DATED,
           g.TRIP_ID,
           g.Revenue
    FROM globaltrips2023.globaltrips_2023_oct g
    WHERE g.COUNTRY = 'UGANDA'
      AND g.RIDE_TYPE = 'CORPORATE TRIP'
    UNION ALL
    SELECT g.CORPORATE_ID,
           g.DATED,
           g.TRIP_ID,
           g.Revenue
    FROM globaltrips2023.globaltrips_2023_nov g
    WHERE g.COUNTRY = 'UGANDA'
      AND g.RIDE_TYPE = 'CORPORATE TRIP'
      UNION ALL
    SELECT g.CORPORATE_ID,
           g.DATED,
           g.TRIP_ID,
           g.Revenue
    FROM globaltrips2023.globaltrips_2023_dec g
    WHERE g.COUNTRY = 'UGANDA'
      AND g.RIDE_TYPE = 'CORPORATE TRIP'
      UNION ALL
    SELECT g.CORPORATE_ID,
           g.DATED,
           g.TRIP_ID,
           g.Revenue
    FROM globaltrips2024.globaltrips_2024_jan g
    WHERE g.COUNTRY = 'KENYA'
      AND g.RIDE_TYPE = 'CORPORATE TRIP'
      UNION ALL
    SELECT g.CORPORATE_ID,
           g.DATED,
           g.TRIP_ID,
           g.Revenue
    FROM globaltrips2024.globaltrips_2024_feb g
    WHERE g.COUNTRY = 'KENYA'
      AND g.RIDE_TYPE = 'CORPORATE TRIP'
      UNION ALL
    SELECT g.CORPORATE_ID,
           g.DATED,
           g.TRIP_ID,
           g.Revenue
    FROM globaltrips2024.globaltrips_2024_mar g
    WHERE g.COUNTRY = 'KENYA'
      AND g.RIDE_TYPE = 'CORPORATE TRIP'
      UNION ALL
    SELECT g.CORPORATE_ID,
           g.DATED,
           g.TRIP_ID,
           g.Revenue
    FROM globaltrips2024.globaltrips_2024_apr g
    WHERE g.COUNTRY = 'KENYA'
      AND g.RIDE_TYPE = 'CORPORATE TRIP'
      UNION ALL
    SELECT g.CORPORATE_ID,
           g.DATED,
           g.TRIP_ID,
           g.Revenue
    FROM globaltrips2024.globaltrips_2024_may g
    WHERE g.COUNTRY = 'KENYA'
      AND g.RIDE_TYPE = 'CORPORATE TRIP'
      UNION ALL
    SELECT g.CORPORATE_ID,
           g.DATED,
           g.TRIP_ID,
           g.Revenue
    FROM globaltrips2024.globaltrips_2024_jun g
    WHERE g.COUNTRY = 'KENYA'
      AND g.RIDE_TYPE = 'CORPORATE TRIP'
)
SELECT ac.Corporate AS corporate_,
       YEAR(ct.DATED) AS year_,
       MONTHNAME(ct.DATED) AS month_,
       COUNT(ct.TRIP_ID) AS trips_,
       SUM(ct.Revenue) AS gross_
FROM combined_trips ct
JOIN all_corporates.all_corporates ac ON ct.CORPORATE_ID = ac.CorporateID
where ac.Corporate like '%juviano%'
GROUP BY ac.Corporate, year_, month_;
