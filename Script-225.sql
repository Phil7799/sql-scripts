select city as `Source.Name`,
      `CREATED TIME` as `Date`, 
      `TRIP ID`, ltrim(RIDER,100) as riders,
       rider,
       upper(`VEHICLE TYPE`) as vehicle_type, DRIVER,  
       PAYMENT, `RIDE TYPE`, 
      `CORPORATE ID`, 
       city, 
       country,
      `TRIP END TIME`,	
      `PAYMENT AMT`,
      `PAYMENT RECEIVED`,
      `PARKING FEE`,
      `PICK UP`,
      "PICK UP LATLONG", 
      `PICK UP`,
      `DROP OFF LAT LONG`,
      `DROP OFF`	
       PROMO, 
      `PROMO CODE`,
      `LITTLE COINS`,
      `TRIP TIME`,
      `TRIP DISTANCE(km)`,
      `COST PER KM`
from pc 
where vehicle_type like '%parcel%'
or vehicle_type like '%good%';