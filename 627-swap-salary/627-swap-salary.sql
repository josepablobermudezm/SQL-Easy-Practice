# Write your MySQL query statement below

update salary
set sex = 
    CASE sex
        WHEN 'm' THEN 'f'
        ELSE 'm'
    END;