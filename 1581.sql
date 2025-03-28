-- Write your MySQL query statement below
SELECT customer_id, COUNT(*) as count_no_trans
FROM Visits
WHERE visit_id NOT IN (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id;

-- Write your PostgreSQL query statement below
select Visits.customer_id, count(*) as count_no_trans
from Visits
left join Transactions on Visits.visit_id = Transactions.visit_id
where Transactions.transaction_id is null
group by customer_id
