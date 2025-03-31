select po.person_id  from person_order po 
left join person_visits pv 
on po.person_id = pv.person_id AND pv.visit_date = '2022-01-07' where po.order_date = '2022-01-07'
