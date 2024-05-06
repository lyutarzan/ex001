-- SQLite
-- 找出actor表中，first_name和last_name重複的資料，並且顯示actor_id, first_name, last_name
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name || last_name IN (
    SELECT first_name || last_name
    FROM actor
    GROUP BY first_name, last_name
    HAVING COUNT(*) > 1
);



