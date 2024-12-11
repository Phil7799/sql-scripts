select week(gj.DATED) , sum(gj.Revenue) 
from globaltrips2024.globaltrips_2024_jul gj 
join all_corporates.all_corporates ac on gj.CORPORATE_ID = ac.CorporateID 
where ac.Corporate = 'FIRST ASSURANCE COMPANY LIMITED'
group by week(gj.DATED)