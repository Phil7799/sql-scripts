-- select *
-- from globaltrips2024.globaltrips_2024_jan gj 
-- join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
-- where gj.COUNTRY = 'TANZANIA'
-- and ac.Corporate in ('NBC Bank Tanzania')
-- union all 
-- select *
-- from globaltrips2024.globaltrips_2024_feb gj 
-- join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
-- where gj.COUNTRY = 'TANZANIA'
-- and ac.Corporate in ('NBC Bank Tanzania')
-- union all 
-- select *
-- from globaltrips2024.globaltrips_2024_mar gj 
-- join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
-- where gj.COUNTRY = 'TANZANIA'
-- and ac.Corporate in ('NBC Bank Tanzania')
-- union all 
-- select *
-- from globaltrips2024.globaltrips_2024_apr gj 
-- join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
-- where gj.COUNTRY = 'TANZANIA'
-- and ac.Corporate in ('NBC Bank Tanzania')
-- union all 
-- select *
-- from globaltrips2024.globaltrips_2024_may gj 
-- join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
-- where gj.COUNTRY = 'TANZANIA'
-- and ac.Corporate in ('NBC Bank Tanzania')
-- union all 
select *
from globaltrips2024.globaltrips_2024_jun gj 
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where gj.COUNTRY = 'UGANDA'
and ac.Corporate in ('Bank of Africa Uganda')