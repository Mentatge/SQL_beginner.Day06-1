INSERT INTO person_discounts (id, person_id, pizzeria_id, discount) 
SELECT 
    ROW_NUMBER() OVER() as id,
	person_id,
	menu.pizzeria_id,
	CASE 
		WHEN count(*) = 1 then 10.5
		WHEN count(*) = 2 then 22
		ELSE 30
	END as discount
FROM person_order JOIN menu on menu_id = person_order.menu_id
GROUP BY person_id, menu.pizzeria_id