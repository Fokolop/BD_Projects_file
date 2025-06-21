SELECT pizzeria.name AS pizzeria_name
FROM person_visits
    JOIN person ON person_id = person.id
    JOIN pizzeria ON pizzeria_id = pizzeria.id
WHERE person.name = 'Andrey'
EXCEPT
SELECT pizzeria.name
FROM person_order
    JOIN person ON person_id = person.id
    JOIN menu ON menu.id = person_order.menu_id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person.name = 'Andrey'
