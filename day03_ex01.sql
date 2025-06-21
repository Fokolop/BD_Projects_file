SELECT menu.id AS menu_id
FROM menu LEFT JOIN person_order po on menu.id = po.menu_id
WHERE po.menu_id IS NULL
ORDER BY po.menu_id;
