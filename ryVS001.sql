select actor_id, first_name, last_name
from actor
where (first_name, last_name) in (
select first_name, last_name
from actor
group by first_name, last_name
having count(actor_id) > 1)

-- what deos this do? explain it in traditional Chinese
-- 這個查詢是找出在actor表中，有重複名字的演員，
-- 並列出他們的actor_id, first_name, last_name

