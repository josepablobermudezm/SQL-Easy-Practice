# Write your MySQL query statement below

with a as (
select 
    id, 
    temperature, 
    recordDate,
    lag(temperature, 1) over(order by recordDate) as previous_t,
    lag(recordDate, 1) over(order by recordDate) as previous_d
from Weather
order by recordDate 
)

select id from a
where temperature > previous_t
and recordDate = DATE_ADD(previous_d, INTERVAL 1 DAY)

