with combinedata as 
( 
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
)
select ac.Corporate as COPS, year(ct.dated_) as year, sum(ct.Rev_) 
from combinedata ct
join all_corporates.all_corporates ac on ct.CORPORATE_ID = ac.CorporateID 
group by ac.Corporate, year(ct.dated_)