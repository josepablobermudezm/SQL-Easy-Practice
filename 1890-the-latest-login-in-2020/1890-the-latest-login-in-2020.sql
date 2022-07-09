# Write your MySQL query statement below

with a as (
select 
    user_id, 
    group_concat(year(time_stamp)) as years
from Logins
group by user_id
having group_concat(year(time_stamp)) like '%2020%'
)


select user_id, max(time_stamp) as last_stamp          
from Logins
where user_id in (select user_id from a) and year(time_stamp) = '2020'
group by user_id