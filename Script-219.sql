SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_jan
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_feb
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_mar
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_apr
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_may
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_jun
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_jul
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_aug
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_sep
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_oct
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_nov
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2022.globaltrips_2022_dec
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_jan
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_feb
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_mar
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_apr
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_may
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_jun
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_jul
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_aug
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_sep
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_oct
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_nov
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
union all 
SELECT year(dated), month(DATED), COUNT(TRIP_ID) AS trips_
FROM globaltrips2023.globaltrips_2023_dec
WHERE COUNTRY = 'KENYA'
AND RIDE_TYPE = 'RETAIL TRIP'
GROUP BY year(dated), month(DATED)
