select
(select name from person where id = person_order.person_id ) as NAME 
from person_order
where person_order.menu_id in (13, 14, 18) and person_order.order_date = ('2022-01-07')
