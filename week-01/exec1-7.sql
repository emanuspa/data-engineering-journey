select title, l.name from film f join "language" l on f.language_id = l.language_id order by f.title


select c.first_name, c.last_name, c2.city , c3.country  from customer c join address a on c.address_id = a.address_id
join city c2 on a.city_id = c2.city_id
join country c3 on c2.country_id = c3.country_id


select f.title, c."name" from film f join film_category fc  on f.film_id = fc.film_id  join category c on fc.category_id = c.category_id where
c."name"  in ( 'Horror', 'Comedy' )

select f.title, a.first_name , a.last_name  from film f join film_actor fa on fa.film_id = f.film_id join actor a on a.actor_id = fa.actor_id  where
f.title  = 'ACADEMY DINOSAUR'

select f.film_id ,f.title from film f left join inventory i on f.film_id  = i.film_id where i.film_id is null

select c.first_name , c.last_name  from customer c left join rental r  on c.customer_id = r.customer_id where
r.customer_id is null

select a.actor_id , a.first_name , a.last_name, a2.actor_id ,a2.first_name , a2.last_name
from actor a join actor a2 on a.last_name = a2.last_name
AND a.actor_id < a2.actor_id