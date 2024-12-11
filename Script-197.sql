select PROMO_CODE , sum(PROMO) 
from globaltrips2024.globaltrips_2024_jul gj 
where country = 'KENYA'
and PROMO_CODE = 'BRITAMINSURE'
and DATED between '2024-07-12' and '2024-07-15'
group by PROMO_CODE 