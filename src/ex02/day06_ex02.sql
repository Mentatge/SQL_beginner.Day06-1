SELECT person.name, menu.pizza_name as pizza_name, menu.price, round(menu.price *  (1-person_discounts.discount/100)) as discount_price, pizzeria.name as pizzeria_name
FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
JOIN person_discounts ON person_discounts.person_id = person.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY person.name, pizza_name