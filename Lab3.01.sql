
USE sakila;

#Q1 Drop column picture from staff.
DELETE staff.picture FROM staff;


#Q2 A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

SELECT * FROM sakila.customer WHERE last_name LIKE '%Sanders%';
SELECT * FROM sakila.staff;

INSERT INTO sakila.staff( staff_id
    , first_name
    , last_name
    , address_id
    , picture, email
    , store_id, active
    , username
    , password
    , last_update
    )
SELECT
	'3'
	, customer.first_name
    , customer.last_name
    , customer.address_id
    , ''
	, customer.email
    , 2
    , 1
    , 'Tammy'
    , ''
    , customer.last_update
FROM
	sakila.customer
WHERE
	customer.customer_id = 75
;

#Q3 Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:


INSERT INTO rental(rental_date,inventory_id,customer_id,staff_id)
VALUES(now(),4,130,1);

select * from sakila.rental ORDER BY rental_id DESC;

