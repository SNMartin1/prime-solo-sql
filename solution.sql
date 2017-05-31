-- 0. Get all the users
SELECT * FROM syntax_practice;

-- Tasks
-- 1. Get all users from Chicago.
SELECT * From syntax_practice
WHERE city = 'chicago';
-- 2. Get all users with usernames that contain the letter a.
select *
from syntax_practice
where username like '%a%';
-- 3. The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
UPDATE syntax_practice SET account_balance = 10
Where account_balance = 0 and transactions_attempted = 0;
-- 4. Select all users that have attempted 9 or more transactions.
SELECT * from syntax_practice
where transactions_attempted >= 9;
-- 5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
SELECT username, account_balance from syntax_practice
Order by account_balance DESC
Limit 3;
-- 6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT username, account_balance from syntax_practice
Order by account_balance ASC
Limit 3;
-- 7. Get all users with account balances that are more than $100.
SELECT * from syntax_practice
where account_balance > 100;
-- 8. Add a new record.
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance)
VALUES ('nicole', 'rochester', 4, 12, 2000.43);
-- 9. The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE from syntax_practice
WHERE city = 'phoenix' or city = 'miami' and transactions_completed < 5; 
