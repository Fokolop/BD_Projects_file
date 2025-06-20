SELECT pizza_name, pizzeria.name AS pizzeria_name, price
FROM menu
LEFT JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE pizza_name ILIKE 'mushroom%' OR pizza_name ILIKE 'pepperoni%'
ORDER BY pizza_name, pizzeria_name;
