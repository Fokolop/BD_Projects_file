WITH pzm AS (
    SELECT pizza_name, pizzeria.name, price
    FROM pizzeria JOIN menu m on pizzeria.id = m.pizzeria_id)
SELECT p1.pizza_name, p1.name AS pizzeria_name_1,
       p2.name AS pizzeria_name_2, p1.price
    FROM pzm AS p1
    JOIN pzm AS p2 ON p1.pizza_name = p2.pizza_name
                          AND p1.price = p2.price
                          AND p1.name < p2.name
ORDER BY p1.pizza_name;
