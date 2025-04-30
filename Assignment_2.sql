-- 1. Write a query that produces all rows from the Customers table
-- for which the salesperson’s number is 1001.
mysql> SELECT * FROM customers WHERE snum = 1001;
+------+---------+--------+--------+------+
| cnum | cname   | city   | rating | snum |
+------+---------+--------+--------+------+
| 2001 | Hoffman | London |    100 | 1001 |
| 2006 | Clemens | London |    100 | 1001 |
+------+---------+--------+--------+------+

-- 2.  Write a select command that produces the rating followed by 
-- the name of each customer in San Jose.

SELECT cname,city,rating FROM customers WHERE city= 'San Jose';
mysql> SELECT cname,city,rating FROM customers WHERE city= 'San Jose';
+----------+----------+--------+
| cname    | city     | rating |
+----------+----------+--------+
| Liu      | San Jose |    200 |
| Cisneros | San Jose |    300 |
+----------+----------+--------+

-- 3. Write a query that will produce the snum values of all salespeople from the Orders table (with the duplicate values 
-- suppressed).

mysql> SELECT DISTINCT snum FROM customers;
+------+
| snum |
+------+
| 1001 |
| 1003 |
| 1002 |
| 1007 |
| 1004 |
+------+

-- 4. Write a query that will give you all orders for more than Rs.1,000.
mysql> SELECT * FROM orders WHERE amt >1000;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+

-- 5. Write a query that will give you the names and cities of all salespeople in London with a commission above 0.10.

mysql> SELECT sname,city FROM salespeople  Where city = 'London' OR comm >0.10;
+--------+-----------+
| sname  | city      |
+--------+-----------+
| Peel   | London    |
| Serres | San Jose  |
| Motika | London    |
| Rifkin | Barcelona |
+--------+-----------+

-- 6. Write a query on the Customers table whose output will exclude all customers with a rating <= 100, unless they are 
-- located in Rome.

mysql> SELECT * FROM customers WHERE rating <= 100 and city = 'Rome';
+------+---------+------+--------+------+
| cnum | cname   | city | rating | snum |
+------+---------+------+--------+------+
| 2007 | Pereira | Rome |    100 | 1004 |
+------+---------+------+--------+------+

-- 7. What will be the output from the following query?
-- Select * from Orders where (amt < 1000 OR NOT (odate = ‘1990-10-
-- 03’ AND cnum > 2003));

mysql> SELECT * FROM orders WHERE (amt < 1000 OR NOT (odate='1990-10-0
3' AND cnum > 2003));
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3010 |  309.95 | 1990-10-04 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+


-- 8. What will be the output of the following query?
-- Select * from Orders
-- where NOT ((odate = ‘1990-10-03’ OR snum >1006) AND amt >= 
-- 1500);
mysql> SELECT * FROM orders WHERE NOT ((odate = '1990-10-03' OR snum>1006) AND amt >= 1500);
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3010 |  309.95 | 1990-10-04 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+


-- 9. What is a simpler way to write this query?
-- Select snum, sname, city, comm from Salespeople
-- Where (comm >= .12 or comm <= .14);

+------+---------+-----------+------+
| snum | sname   | city      | comm |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.12 |
| 1002 | Serres  | San Jose  | 0.13 |
| 1004 | Motika  | London    | 0.11 |
| 1007 | Rifkin  | Barcelona | 0.15 |
| 1003 | Axelrod | New York  | 0.10 |
+------+---------+-----------+------+

-- 10. Write a query that selects all orders except those with 
-- zeroes or NULLs in the amt field. 
-- mysql> SELECT snum,sname,city,comm from salespeople WHERE (comm >=.12
-- or comm <= .14);

mysql> SELECT onum FROM orders WHERE amt IS NOT NULL AND amt <> 0;
+------+
| onum |
+------+
| 3001 |
| 3003 |
| 3002 |
| 3005 |
| 3006 |
| 3009 |
| 3007 |
| 3008 |
| 3010 |
| 3011 |
+------+