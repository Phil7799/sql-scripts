SELECT sum(gj.Revenue) 
    FROM globaltrips2024.globaltrips_2024_Jul gj
    JOIN all_corporates.all_corporates ac ON gj.CORPORATE_ID = ac.CorporateID
    WHERE gj.COUNTRY = 'KENYA' AND gj.RIDE_TYPE = 'CORPORATE TRIP'
    AND gj.VEHICLE_TYPE IN ('BASIC', 'COMFORT', 'COMFORT+', 'ECONOMY', 'LADYBUG' , 'SHUTTLE' , 'LITTLEBODA')
    and gj.DATED between '2024-07-01' and '2024-07-07'