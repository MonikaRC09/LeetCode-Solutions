# Write your MySQL query statement below
delete from person
where id in(
select p1.id 
from (select * from person) as p1 
join (select * from person) as p2
on p1.email = p2.email and p1.id > p2.id);