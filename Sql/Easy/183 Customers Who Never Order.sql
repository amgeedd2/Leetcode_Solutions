-- Problem: 183. Customers Who Never Order
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/customers-who-never-order/description/

select c.name as Customers 
from Customers c left join Orders o
on c.id = o.customerId
group by c.id
having count(o.customerId)<1

-- Anther Solution
select c.name as Customers 
from Customers c left join Orders o
on c.id = o.customerId
where o.id is null
