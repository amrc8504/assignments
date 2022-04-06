-- 1.)
-- Q: How many actors are there with the last name: 'Wahlberg'?
-- A: There are 2 actors with the last name 'Wahlberg'.
SELECT COUNT(last_name) AS Wahlbergs
FROM actor
WHERE last_name = 'Wahlberg';

-- 2.)
-- Q: How many payments were made between $3.99 and $5.99?
-- A: There are 4 payments between $3.99 and $5.99.
SELECT COUNT(DISTINCT amount) AS payments
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3.)
-- Q: What film does the store have the most of? (Search in inventory)
-- A: The store has the most of film "200".
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT DESC;

-- 4.)
-- Q: How many customers have the last name "William"?
-- A: There are 0 customers with the last name 'William'.
SELECT COUNT(last_name) AS LN_William
FROM customer
WHERE last_name = 'William';

-- 5.)
-- Q: What store employee (get the id) sold the most rentals?
-- A:
SELECT rental_id, staff_id, COUNT(DISTINCT staff_id)
FROM rental
GROUP BY rental_id, staff_id
ORDER BY COUNT DESC;

-- 6.)
-- Q: How many different district names are there?
-- A: There are 600 different district names.
SELECT COUNT(DISTINCT city_id) as Districts
FROM city;

-- 7.)
-- Q: What film has the most actors in it? (use film_actor table and get film_id)
-- A: Film 508 has the most actors with 16 actors.
SELECT film_id, COUNT(*) Number_Actors
FROM film_actor
GROUP BY film_id
HAVING COUNT(*) > 10;

-- 8.)
-- Q: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- A:
SELECT store_id, COUNT(last_name) last_end_in_es
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'
GROUP BY store_id;

-- 9.)
-- Q: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- A:
SELECT customer_id, amount
FROM payment
GROUP BY customer_id, amount
HAVING customer_id BETWEEN 380 and 430 and amount > 250;

-- 10.)
-- Q: Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- A: There are 5 movie ratings.
SELECT rating, title
FROM film;