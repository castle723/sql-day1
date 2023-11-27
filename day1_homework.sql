--1. How many actors are there with the last name ‘Wahlberg’? 
SELECT first_name,last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99? 
SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--3. What film does the store have the most of? (search in inventory) tied at 8 with like 30 different ones im not writing them all out
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY count desc;
--4. How many customers have the last name ‘William’? 0
select last_name
from customer 
where last_name = 'William';
--5. What store employee (get the id) sold the most rentals? 1
select staff_id, count(staff_id)
from rental
group by staff_id;

--6. How many different district names are there? 378
select count(distinct district)
from address;
--7. What film has the most actors in it? (use film_actor table and get film_id) 508
select film_id, count(film_id)
from film_actor 
group by film_id
order by count desc;
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 0
select store_id, last_name
from customer
where last_name = '%es' and store_id = 1;
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount, customer_id, count(rental_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;
--this one was real hard, idk
--10. Within the film table, how many rating categories are there? And what rating has the most movies total? pg-13
select rating, count(rating)
from film
group by rating
order by count desc;