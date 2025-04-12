select person_order.order_date, concat(person.name, ' (', person.age, ')') as person_information from person_order
natural join person order by person_order.order_date asc, person_information asc;
