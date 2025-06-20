SELECT name
FROM person
INNER JOIN person_order on person.id = person_order.person_id
INNER JOIN menu ON person_order.menu_id = menu.id
WHERE gender = 'male' AND (person.address = 'Samara' OR person.address = 'Moscow') AND (menu.pizza_name ILIKE 'pepperoni%' OR menu.pizza_name ILIKE 'mushroom%')
ORDER BY person.name DESC; 
