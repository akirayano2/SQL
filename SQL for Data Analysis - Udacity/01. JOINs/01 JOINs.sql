-- 4. Text + Quiz: Your first JOIN
-- 1. Try pulling all the data from the accounts table, and all the data from the orders table.
SELECT accounts.*, orders.*
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
