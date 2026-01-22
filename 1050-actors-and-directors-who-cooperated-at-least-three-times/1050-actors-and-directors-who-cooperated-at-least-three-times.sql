# Write your MySQL query statement below
SELECT actor_id AS ACTOR_ID, director_id as DIRECTOR_ID
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3