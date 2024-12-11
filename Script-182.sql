with combinedata as 
( 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_jan gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_feb gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_mar gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_apr gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_may gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_jun gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_jul gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_aug gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_sep gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_oct gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_nov gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.PAYMENT_AMT as Rev_ 
--   from globaltrips2021.globaltrips_2021_dec gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.TRIP_TYPE = 'CORPORATE TRIP'
--      union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
  from globaltrips2022.globaltrips_2022_jan gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
  from globaltrips2022.globaltrips_2022_feb gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
  from globaltrips2022.globaltrips_2022_mar gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
  from globaltrips2022.globaltrips_2022_apr gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
  from globaltrips2022.globaltrips_2022_may gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
  from globaltrips2022.globaltrips_2022_jun gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
  from globaltrips2022.globaltrips_2022_jul gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
  from globaltrips2022.globaltrips_2022_aug gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
  from globaltrips2022.globaltrips_2022_sep gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
  from globaltrips2022.globaltrips_2022_oct gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
  from globaltrips2022.globaltrips_2022_nov gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
  from globaltrips2022.globaltrips_2022_dec gj 
  where gj.COUNTRY = 'KENYA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
--      union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2023.globaltrips_2023_jan gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2023.globaltrips_2023_feb gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2023.globaltrips_2023_mar gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
--   from globaltrips2023.globaltrips_2023_apr gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2023.globaltrips_2023_may gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
--   from globaltrips2023.globaltrips_2023_jun gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2023.globaltrips_2023_jul gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
--   from globaltrips2023.globaltrips_2023_aug gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2023.globaltrips_2023_sep gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
--   from globaltrips2023.globaltrips_2023_oct gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2023.globaltrips_2023_nov gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
--   from globaltrips2023.globaltrips_2023_dec gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--      union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2024.globaltrips_2024_jan gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2024.globaltrips_2024_feb gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2024.globaltrips_2024_mar gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
--   from globaltrips2024.globaltrips_2024_apr gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_
--   from globaltrips2024.globaltrips_2024_may gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
--   union all 
--   select gj.DATED as dated_, gj.CORPORATE_ID , gj.Revenue as Rev_ 
--   from globaltrips2024.globaltrips_2024_jun gj 
--   where gj.COUNTRY = 'KENYA'
--      and gj.RIDE_TYPE = 'CORPORATE TRIP'
)
select ac.Corporate as COPS, year(ct.dated_) as year, sum(ct.Rev_) 
from combinedata ct
join all_corporates.all_corporates ac on ct.CORPORATE_ID = ac.CorporateID 
group by ac.Corporate, year(ct.dated_)