-- SQLite
with t1 as (select title, first_name || ' ' || last_name AS full_name
from film 
left join film_actor on film.film_id = film_actor.film_id
left join actor on film_actor.actor_id = actor.actor_id
group by title, full_name)


select title, count(full_name) as count_of_actors
from t1
group by title
order by count_of_actors desc

-- 以繁體中文解釋上述查詢
-- 1. 先將 film, film_actor, actor 三個表格做連結
-- 2. 用 group by 將 title, full_name 分組
-- 3. 用 count 計算每個 title 的演員數量
-- 4. 用 order by 將演員數量由大到小排序

