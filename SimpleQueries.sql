USE classicmodels;
-- 1
/*
Write a query to display the name, product line, and buy price of all products. The output columns should display as “Name”, “Product Line”, and “Buy Price”. The output should display the most expensive items first.
*/
SELECT p.productName AS 'Name', p.productLine AS 'Product Line', p.buyPrice AS 'Buy Price'
FROM products p
ORDER BY p.buyPrice DESC;

-- 2
/*
Write a query to display the first name, last name, and city for all customers from Germany. Columns should display as “First Name”, “Last Name”, and “City”. The output should be sorted by the customer’s last name (ascending).
*/
SELECT c.contactFirstName AS 'First Name', c.contactLastName AS 'Last Name', c.city AS 'City'
FROM customers c
WHERE c.country = 'Germany'
ORDER BY c.contactLastName ASC;

-- 3
/*
Write a query to display each of the unique values of the status field in the orders table. The output should be sorted alphabetically increasing. Hint: the output should show exactly 6 rows.
*/
SELECT DISTINCT status
FROM orders
ORDER BY STATUS;

-- 4
/*
Select all fields from the payments table for payments made on or after January 1, 2005. Output should be sorted by increasing payment date.
*/
SELECT *
FROM payments p
WHERE p.paymentDate > DATE '2005-01-01'
ORDER BY p.paymentDate;

-- 5
/*
Write a query to display all Last Name, First Name, Email and Job Title of all employees working out of the San Francisco office. Output should be sorted by last name.
*/
SELECT e.lastName, e.firstName, e.email, e.jobTitle
FROM employees e
WHERE e.officeCode = 1
ORDER BY e.lastName;

-- 6
/*
Write a query to display the Name, Product Line, Scale, and Vendor of all of the car products – both classic and vintage. The output should display all vintage cars first (sorted alphabetically by name), and all classic cars last (also sorted alphabetically by name).
*/
SELECT p.productName, p.productLine, p.productScale, p.productVendor
FROM products p
WHERE p.productLine = 'Vintage Cars' OR p.productLine = 'Classic Cars'
ORDER BY p.productName ASC, p.productName;

