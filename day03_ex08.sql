INSERT INTO menu
VALUES ((SELECT MAX(menu.id) + 1 FROM menu),
        (SELECT id FROM pizzeria WHERE name = 'Dominos'),
        'sicilian pizza', 900)
