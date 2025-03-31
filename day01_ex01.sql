select m.pizza_name as object_name from menu m 
union all 
select p."name" as object_name from person p 
order by object_name 
