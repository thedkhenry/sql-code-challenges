USE banking;
-- 1.
/*
For each product, show the product name "Product" and the product type name "Type".
*/
SELECT p.NAME , p.PRODUCT_TYPE_CD AS 'TYPE'
FROM product p;


-- 2.
/*
For each branch, list the branch name and city, plus last name and title of each employee who works in that branch.
*/
SELECT b.NAME , b.CITY , e.LAST_NAME , e.TITLE
FROM branch b
LEFT JOIN employee e
ON b.BRANCH_ID = e.ASSIGNED_BRANCH_ID;


-- 3.
/*
Show a list of each unique employee title.
*/
SELECT DISTINCT title
FROM employee;


-- 4.
/*
Show the last name and title of each employee, along with the last name and title of that employee's boss.
*/
SELECT e.LAST_NAME AS 'Emp NAME',
	e.TITLE AS 'Emp TITLE',  
	m.LAST_NAME 'Boss NAME', 
	m.TITLE AS 'Boss TITLE'
FROM employee e
LEFT JOIN employee m
ON e.SUPERIOR_EMP_ID = m.EMP_ID;


-- 5.
/*
For each account, show the name of the account's product, the available balance, and the customer's last name.
*/
SELECT a.ACCOUNT_ID, p.NAME , a.AVAIL_BALANCE , i.LAST_NAME
FROM account a
JOIN product p ON a.PRODUCT_CD = p.PRODUCT_CD
JOIN individual i ON a.CUST_ID = i.CUST_ID;


-- 6.
/*
List all account transaction details for individual customers whose last name starts with 'T'.
*/
SELECT t.*
FROM individual i
JOIN account a ON a.CUST_ID = i.CUST_ID
JOIN acc_transaction t ON t.ACCOUNT_ID = a.ACCOUNT_ID
WHERE i.LAST_NAME LIKE 'T%';





