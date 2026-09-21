# Write your MySQL query statement below
select u.name,
(select sum(t.amount) 
 from Transactions t
 where t.account = u.account) as balance
from Users u
where (select sum(t.amount) 
 from Transactions t
 where t.account = u.account) > 10000;