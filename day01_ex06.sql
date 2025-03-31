select person.name, order_date as action_date from person_order, person 
order by action_date asc, person.name desc 
