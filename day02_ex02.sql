select COALESCE(p.name, '-') as person_name, pv.visit_date, COALESCE(pz.name, '-') as pizzeria_name
from ( select * from person_visits where visit_date between '2022-01-01' and '2022-01-03') as pv
full join person p on pv.person_id = p.id
full join pizzeria pz on pv.pizzeria_id = pz.id
order by person_name, pv.visit_date;
