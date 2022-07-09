# Write your MySQL query statement below


select name, coalesce(sum(distance), 0) as travelled_distance 
from Users as u
left join Rides as r
on u.id = r.user_id
group by u.id, name
order by travelled_distance desc, name asc