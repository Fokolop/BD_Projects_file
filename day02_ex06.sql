SELECT menu.pizza_name, pizzeria.name AS pizzeria_name
FROM (
(SELECT name, id
FROM person 
WHERE name = 'Denis' or name = 'Anna') as p
LEFT JOIN person_order ON person_order.person_id =p.id
LEFT JOIN menu ON person_order.menu_id = menu.id
LEFT JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
)
ORDER BY 1,2;
