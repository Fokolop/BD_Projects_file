select gs::date as missing_date
from generate_series ('2022-01-01', '2022-01-10', '1 day'::interval) gs
left join (select * from person_visits where person_id = 1 or person_id = 2) as pv
on pv.visit_date = gs
where visit_date is null
order by missing_date;
