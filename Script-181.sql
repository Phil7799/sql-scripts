SELECT 
    gj.DATED AS DATED_,
    gj.TRIP_ID AS TRIP_ID,
    gj.RIDER AS RIDER_,
    gj.VEHICLE_TYPE AS VEHICLE_TYPE,
    gj.CITY AS CITY_,
    gj.COUNTRY AS COUNTRY_,
    gj.TRIP_DISTANCE AS TRIP_DISTANCE,
    gj.TRIP_TIME AS TRIP_TIME,
    gj.PAYMENT_AMT AS PAYMENT_AMT,
    ac.Name AS DEPARTMENT_,
    ac.Corporate AS CORPORATE_
FROM 
    globaltrips2024.globaltrips_2024_apr gj 
JOIN 
    all_corporates.all_corporates ac 
ON 
    gj.CORPORATE_ID = ac.CorporateID 
WHERE 
    gj.COUNTRY = 'KENYA'
    AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND ac.Corporate = 'Equity Bank (Kenya) Limited'    
   union all
SELECT 
    gj.DATED AS DATED_,
    gj.TRIP_ID AS TRIP_ID,
    gj.RIDER AS RIDER_,
    gj.VEHICLE_TYPE AS VEHICLE_TYPE,
    gj.CITY AS CITY_,
    gj.COUNTRY AS COUNTRY_,
    gj.TRIP_DISTANCE AS TRIP_DISTANCE,
    gj.TRIP_TIME AS TRIP_TIME,
    gj.PAYMENT_AMT AS PAYMENT_AMT,
    ac.Name AS DEPARTMENT_,
    ac.Corporate AS CORPORATE_
FROM 
    globaltrips2024.globaltrips_2024_may gj 
JOIN 
    all_corporates.all_corporates ac 
ON 
    gj.CORPORATE_ID = ac.CorporateID 
WHERE 
    gj.COUNTRY = 'KENYA'
    AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND ac.Corporate = 'Equity Bank (Kenya) Limited'  
    union all
SELECT 
    gj.DATED AS DATED_,
    gj.TRIP_ID AS TRIP_ID,
    gj.RIDER AS RIDER_,
    gj.VEHICLE_TYPE AS VEHICLE_TYPE,
    gj.CITY AS CITY_,
    gj.COUNTRY AS COUNTRY_,
    gj.TRIP_DISTANCE AS TRIP_DISTANCE,
    gj.TRIP_TIME AS TRIP_TIME,
    gj.PAYMENT_AMT AS PAYMENT_AMT,
    ac.Name AS DEPARTMENT_,
    ac.Corporate AS CORPORATE_
FROM 
    globaltrips2024.globaltrips_2024_jun gj 
JOIN 
    all_corporates.all_corporates ac 
ON 
    gj.CORPORATE_ID = ac.CorporateID 
WHERE 
    gj.COUNTRY = 'KENYA'
    AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND ac.Corporate = 'Equity Bank (Kenya) Limited'
