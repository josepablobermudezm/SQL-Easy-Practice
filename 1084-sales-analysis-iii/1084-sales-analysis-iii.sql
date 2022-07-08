# Write your MySQL query statement below

select 
    distinct 
        p.product_id, 
        p.product_name
from product as p
left join sales as s
on p.product_id = s.product_id
where s.sale_date between '2019-01-01' and '2019-03-31'
and p.product_id not in (
    select 
        product_id 
    from sales 
    where sale_date not between '2019-01-01' and '2019-03-31'
);

-- simpliest solution

/*
SELECT s.product_id, product_name
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id
GROUP BY s.product_id
HAVING MIN(sale_date) >= CAST('2019-01-01' AS DATE) AND
       MAX(sale_date) <= CAST('2019-03-31' AS DATE)
*/