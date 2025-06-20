WITH T AS (
    SELECT person.name, menu.pizza_name, gender
    FROM person
    INNER JOIN person_order AS PO ON PO.person_id = person.id
    INNER JOIN menu ON po.menu_id = menu.id
    WHERE gender = 'female')
SELECT T.name 
FROM T
WHERE pizza_name = 'pepperoni pizza'
INTERSECT 
SELECT T.name
FROM T
WHERE (pizza_name = 'cheese pizza')
ORDER BY name;
