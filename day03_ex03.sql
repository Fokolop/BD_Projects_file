WITH pvp AS (
    SELECT p.name, per.gender
    FROM person_visits pv
    JOIN person per ON pv.person_id = per.id
    JOIN pizzeria p ON pv.pizzeria_id = p.id
),
     pv_male AS (SELECT name FROM pvp WHERE gender = 'male'),
     pv_female AS (SELECT name FROM pvp WHERE gender = 'female')
SELECT name AS pizzeria_name
FROM (
         SELECT name FROM pv_male EXCEPT ALL SELECT name FROM pv_female
     )
UNION ALL
(
    SELECT name FROM pv_female EXCEPT ALL SELECT name FROM pv_male
)
ORDER BY pizzeria_name;
