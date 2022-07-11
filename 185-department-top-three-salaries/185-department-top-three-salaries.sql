# Write your MySQL query statement below

with a as (
select 
    d.name as Department, 
    e.name as Employee, 
    e.Salary,
    dense_rank() over(partition by d.name order by e.salary desc) as nRank
from Employee as e
left join Department as d
on e.departmentId = d.id
)

select Department, Employee, Salary
from a
where nRank in (1, 2, 3)
    