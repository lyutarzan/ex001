-- SQLite
select actor_id, first_name, last_name
from actor
where (first_name, last_name) in (
select first_name, last_name
from actor
group by first_name, last_name
having count(actor_id) > 1);

-- 請解釋上面程式碼的含義

-- 這個程式碼是要找出actor表中，
-- first_name和last_name重複的資料，
-- 並且顯示actor_id, first_name, last_name
