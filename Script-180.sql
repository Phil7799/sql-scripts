with combinedata as 
( 
  select gj.DATED ,gj.CORPORATE_ID 
  from globaltrips2024.globaltrips_2024_jan gj 
  where gj.COUNTRY = 'TANZANIA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED ,gj.CORPORATE_ID
  from globaltrips2024.globaltrips_2024_feb gj 
  where gj.COUNTRY = 'TANZANIA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED ,gj.CORPORATE_ID
  from globaltrips2024.globaltrips_2024_mar gj 
  where gj.COUNTRY = 'TANZANIA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED ,gj.CORPORATE_ID 
  from globaltrips2024.globaltrips_2024_apr gj 
  where gj.COUNTRY = 'TANZANIA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED ,gj.CORPORATE_ID 
  from globaltrips2024.globaltrips_2024_may gj 
  where gj.COUNTRY = 'TANZANIA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
  union all 
  select gj.DATED ,gj.CORPORATE_ID 
  from globaltrips2024.globaltrips_2024_jun gj 
  where gj.COUNTRY = 'TANZANIA'
     and gj.RIDE_TYPE = 'CORPORATE TRIP'
)
select monthname(ct.DATED) ,Count(distinct ac.Corporate) as COPS_
from combinedata ct
join all_corporates.all_corporates ac on ct.CORPORATE_ID = ac.CorporateID 
group by monthname(ct.DATED)