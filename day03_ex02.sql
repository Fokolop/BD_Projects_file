WITH pom AS (
SELECT * FROM menu
    LEFT JOIN person_order po ON menu.id = po.menu_id
WHERE po.menu_id IS NULL)
SELECT pom.pizza_name, pom.price, pizzeria.name AS pizzeria_name
FROM pom JOIN pizzeria ON pom.pizzeria_id = pizzeria.id
ORDER BY pom.pizza_name, pom.price;
