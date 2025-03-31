select person_order.person_id, order_date as action_date from person_order 
join person_visits on person_order.person_id  = person_order.person_id  AND order_date = visit_date 
order by action_date asc, person_order.person_id desc 
