USE sakila;

SELECT first_name, last_name FROM actor;

SELECT 
    actor_id,
	first_name,
    last_name
FROM
    actor
WHERE
    first_name IN ('Joe');
    
SELECT 
    actor_id,
	first_name,
    last_name
FROM
	actor
WHERE
	last_name LIKE '%GEN%';
    
SELECT 
    last_name,
	first_name
FROM
	actor
WHERE
	last_name LIKE '%LI%';

-- 2d --
SELECT 
	country_id,
    country
FROM
	country
WHERE 
	country IN ('Afghanistan', 'Bangladesh', 'China');

-- 3a --
ALTER TABLE actor
	ADD COLUMN description BLOB; 
			
   SELECT * FROM actor; 
   
-- 3b --
ALTER TABLE actor
	DROP COLUMN description;
    
   SELECT * FROM actor;

-- 4a --
SELECT last_name, count(*)
FROM actor
GROUP BY last_name;  

-- 4b -- 
SELECT last_name, count(*)
FROM actor
GROUP BY last_name
HAVING COUNT(*) >= 2; 

SELECT 
	last_name,
    first_name
FROM actor;

-- 4c --
UPDATE actor
SET first_name = 'Harpo'
WHERE last_name = "Williams" and first_name = "Groucho";

SELECT 
	last_name,
    first_name
FROM actor;

-- 4d --
UPDATE actor
SET first_name = "GROUCHO"
WHERE first_name = "Harpo";

SELECT 
	last_name,
    first_name
FROM actor;    

-- 5a --
SHOW CREATE TABLE address;

-- 6a --
SELECT staff.first_name, staff.last_name, address.address
FROM staff
INNER JOIN address ON staff.address_id=address.address_id;

-- 6b fix -- 
SELECT staff.first_name, staff.last_name, payment.amount
FROM staff
INNER JOIN payment ON staff.staff_id=payment.staff_id;
-- WHERE payment_date > 2005-7-30 and payment_date < 2005-9-1


