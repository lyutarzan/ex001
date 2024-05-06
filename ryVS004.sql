-- SQLite
/*
# I have used left join because there could have been actors who has played in 0 movies.


df = pd.read_sql_query(""" select first_name || ' ' || last_name as full_name, 
                        count(film.film_id) as movie_count
                        from actor 
                        left join film_actor on film_actor.actor_id = actor.actor_id
                        left join film on film.film_id = film_actor.film_id
                        group by first_name || ' ' || last_name
                        order by movie_count desc, full_name
                        """, conn)
*/

select first_name || ' ' || last_name as full_name, 
count(film.film_id) as movie_count
from actor 
left join film_actor on film_actor.actor_id = actor.actor_id
left join film on film.film_id = film_actor.film_id
group by first_name || ' ' || last_name
order by movie_count desc, full_name

-- 以繁體中文解釋上述查詢語句
-- 這個查詢語句是在查詢演員的名字和他們演出的電影數量，
-- 並且按照電影數量由高到低排序，
-- 如果電影數量相同的話，則按照名字排序。
