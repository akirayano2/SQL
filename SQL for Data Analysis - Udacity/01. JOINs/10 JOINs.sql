-- 5. Provide the name for each region for every order, as well as the account name and the unit price they paid 
-- (total_amt_usd/total) for the order. However, you should only provide the results if the standard order quantity 
-- exceeds 100 and the poster order quantity exceeds 50. Your final table should have 3 columns: region name, account name,
-- and unit price. Sort for the smallest unit price first. In order to avoid a division by zero error, adding .01 to the 
-- denominator here is helpful (total_amt_usd/(total+0.01).
SELECT
    r.name region_name,
    a.name account_name,
    (total_amt_usd/(total + 0.01)) unit_price
FROM orders o
JOIN accounts a
ON a.id = o.account_id
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN region r
ON r.id = s.region_id
WHERE o.standard_qty > 100 
    AND poster_qty > 50
ORDER BY (total_amt_usd/(total + 0.01))