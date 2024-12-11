select *
from globaltrips2024.globaltrips_2024_jul ct
JOIN all_corporates.all_corporates ac ON ct.CORPORATE_ID = ac.CorporateID
where ac.Corporate like '%Safaricom%'
limit 10