-- 8. Find all the orders that occurred in 2015. Your final table should have 4 columns: 
-- occurred_at, account name, order total, and order total_amt_usd.
SELECT
    o.occurred_at accurred_at_order,
    a.name account_name,
    o.total total_order,
    o.total_amt_usd total_amt_usd_order
FROM orders o
JOIN accounts a
ON a.id = o.account_id
WHERE o.occurred_at BETWEEN '01-01-2015' AND '01-01-2016'
ORDER BY o.occurred_at DESC