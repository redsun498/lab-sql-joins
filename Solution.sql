-- 1. List the number of films per category.
select 
name as 'Category',
count(title) as 'Number of films' 
from film 
join film_category 
on film.film_id = film_category.film_id
join category 
on film_category.category_id = category.category_id
group by name
order by count(title) desc ;

-- 2. Retrieve the store ID, city, and country for each store.

select 
store_id,
city,
country 
from store
join address
on store.address_id = address.address_id 
join city 
on address.city_id = city.city_id
join country 
on city.country_id = country.country_id;

-- 3. Calculate the total revenue generated by each store in dollars.

select store.store_id as 'Store',
sum(amount) as 'Total Revenue'
from payment
join staff 
on payment.staff_id = staff.staff_id
join store
on staff.store_id = store.store_id
group by store.store_id;

-- 4.Determine the average running time of films for each category.

select category.name as 'Category',
avg(length)
from film_category
join film
on film_category.film_id = film.film_id
join category
on category.category_id = film_category.category_id
group by category.name;

select * from category;




