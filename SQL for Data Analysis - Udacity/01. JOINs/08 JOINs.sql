-- 3. Provide a table that provides the region for each sales_rep along with their associated accounts. 
-- This time only for accounts where the sales rep has a last name starting with K and in the Midwest region. 
-- Your final table should include three columns: the region name, the sales rep name, and the account name. 
-- Sort the accounts alphabetically (A-Z) according to account name.
SELECT 
    r.name region_name,
    s.name sales_rep_name,
    a.name accounts_name
FROM sales_reps s 
JOIN accounts a
ON s.id = a.sales_rep_id
JOIN region r
ON s.region_id = r.id
WHERE r.name = 'Midwest' 
    AND s.name LIKE ' K%'
ORDER BY a.name