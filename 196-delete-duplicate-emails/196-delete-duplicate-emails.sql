# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

DELETE p1
FROM Person p1
INNER JOIN Person p2
ON p1.Email = p2.Email
where p1.id > p2.id;