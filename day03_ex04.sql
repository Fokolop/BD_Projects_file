WITH pop AS (
    SELECT p.name, per.gender
    FROM person_order po
    JOIN person per ON po.person_id = per.id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria p ON m.pizzeria_id = p.id
),
pizzerias_male_only AS (
	SELECT name
	FROM pop
	WHERE gender = 'male'
	EXCEPT
	SELECT name
	FROM pop
	WHERE gender = 'female'
),
pizzerias_female_only AS (
	SELECT name
	FROM pop
	WHERE gender = 'female'
	EXCEPT
	SELECT name
	FROM pop
	WHERE gender = 'male'
)
SELECT name AS pizzeria_name
FROM pizzerias_male_only
UNION
SELECT name
FROM pizzerias_female_only
ORDER BY pizzeria_name;
