# Write your MySQL query statement below

with a as (
select 
    count(actor_id) as counta, 
    count(director_id) as countd, 
    actor_id, 
    director_id
from ActorDirector 
group by director_id, actor_id
having count(actor_id) >= 3 and count(director_id) >= 3 
)

select actor_id, director_id
from a
    

