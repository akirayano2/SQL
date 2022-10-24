-- 11. Quiz: JOIN Questions Part I
-- 1. Provide a table for all web_events associated with account name of Walmart. There should be three
-- columns. Be sure to include the primary_poc, time of the event, and the channel for each event.
-- Additionally, you might choose to add a fourth column to assure only Walmart events were chosen.
SELECT 
    accounts.name,
    accounts.primary_poc,
    web_events.channel
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.id
WHERE accounts.name = 'Walmart'