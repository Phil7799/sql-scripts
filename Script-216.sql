with gj as (
    select *
    from globaltrips2023.globaltrips_2023_jan
    where Country = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_feb
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_mar
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_apr
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_may
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_jun
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_jul
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_aug
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_sep
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_oct
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_nov
    where COUNTRY = 'KENYA'
    union all   
    select *
    from globaltrips2023.globaltrips_2023_dec
    where COUNTRY = 'KENYA'
)
select *
from gj
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where ac.Corporate like '%KCB%' OR ac.Corporate like '%SEED SYSTEM DEVELOPMENT%'
