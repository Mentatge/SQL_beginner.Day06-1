comment on column person_discounts.id is 'primary key';
comment on column person_discounts.person_id is 'connect person on person_id';
comment on column person_discounts.pizzeria_id is 'connect on pizzeria by pizzeria_id';
comment on column person_discounts.discount is 'discount for pizza depens on visits by person, between 10 and 30%';
