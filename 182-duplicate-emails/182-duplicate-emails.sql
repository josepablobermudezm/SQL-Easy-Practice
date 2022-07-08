# Write your MySQL query statement below

select 
    distinct 
        p.email 
from 
        person p , person p1 
where 
        p.email = p1.email 
    and    
        p.id != p1.id