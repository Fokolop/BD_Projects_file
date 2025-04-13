select order_date, name || '(' || age || ')' as person_information
from 
  (select person_id, order_date from person_order) as piod
natural join
  (select id as person_id, name, age from person) as pina
order by order_date, name;
