select order_date, name || '(' || age || ')' as person_information
from person_order join person p on p.id = person_order.person_id
order by person_order.order_date, name;
