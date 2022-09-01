--How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- answer is 2

--How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
-- answer is 5607

--What film does the store have the most of? (search in inventory)
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id ORDER BY COUNT DESC;
-- answer is *8

--4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';
-- answer is 0 
-- What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id ORDER BY staff_id;
-- answer is id 1 and sold 8040
-- 6. How many different district names are there?
SELECT DISTINCT district
FROM address
GROUP BY district;
-- answer is 378
-- What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id ORDER BY COUNT DESC;

-- answer is 508 film and 15 actors

--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name), store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id ORDER BY store_id;
-- answer is 13

-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(rental_id) 
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;
-- answer is 3

-- Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(rating), rating
FROM film
GROUP BY rating ORDER BY COUNT;
-- answer is 5 rating 

    



    