# Write your MySQL query statement below

with a as (
    select 
        count(order_number) as counta, 
        customer_number 
    from Orders
    group by customer_number
    order by counta DESC
)

select customer_number
from a
limit 1