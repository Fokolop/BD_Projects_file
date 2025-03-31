select m.id as object_id, m.pizza_name as object_name from menu m 
union all 
select p.id  AS object_id, p."name" as object_name from person p 
order by object_id, object_name 
