select p.name as person_name, m.pizza_name, pz.name as pizzeria_name
from person_order
   join person p on p.id = person_order.person_id
   join menu m on m.id = person_order.menu_id
   join pizzeria pz on pz.id = m.pizzeria_id
order by p.name, m.pizza_name;
