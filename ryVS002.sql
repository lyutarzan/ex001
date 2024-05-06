-- SQLite
select title, first_name || ' ' || last_name AS full_name
from film 
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
group by title, full_name
order by title, full_name

-- explain the query in Traditional Chinese
-- 這個查詢是從 film 表中選擇 title 欄位，
-- 並且將 actor 表中的 first_name 和 last_name 欄位合併成 full_name