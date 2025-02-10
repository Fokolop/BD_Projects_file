select
 (select name from person where id = person_order.person_id ) as NAME,
   case
      when (select name from person where id = person_order.person_id) = 'Denis'
    then true
    else false
  end as check_name
from person_order 
where person_order.menu_id in (13, 14, 18) and person_order.order_date = ('2022-01-07')
