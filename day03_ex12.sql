INSERT INTO person_order
SELECT (SELECT MAX(id) + gs.id FROM person_order group by gs.id),
       gs.id, (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
       '2022-02-25'
FROM generate_series(1, (SELECT COUNT(id) FROM person)) AS gs(id);
