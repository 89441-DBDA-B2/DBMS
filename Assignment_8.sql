-- Assignment 8
-- Use sub-query to solve following problems.
-- Note : To solve below queries use “sales” database

-- 1. Write a query that uses a subquery to obtain all orders for the customer named
-- Cisneros. Assume you do not know his customer number (cnum).

mysql> select * from orders where snum = (select snum from customers where cname= 'Cisneros');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
+------+---------+------------+------+------+

-- 2. Write a query that produces the names and ratings of all customers who have above-
-- average orders.

select cname,rating from customers 
where cnum in (select cnum from orders where amt > (select avg(amt) from orders));
+---------+--------+
| cname   | rating |
+---------+--------+
| Liu     |    200 |
| Clemens |    100 |
+---------+--------+

-- 3. Write a query that selects the total amount in orders for each salesperson for whom
-- this total is greater than the amount of the largest order in the table.

 select snum , sum(amt) from orders 
 group by snum 
 having sum(amt)> (select max(amt) from orders);

+------+----------+
| snum | sum(amt) |
+------+----------+
| 1001 | 15382.07 |
+------+----------+


-- 4. Write a query that selects all customers whose ratings are equal to or greater than
-- ANY of Serres’.
SELECT * FROM customers 
Where rating >= Any(select rating from customers where snum = 
(select snum from salespeople where sname = 'serres'));

+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
+------+----------+----------+--------+------+

-- 5. Write a query using ANY or ALL that will find all salespeople who have no customers
-- located in their city.

SELECT snum, sname FROM salespeople WHERE city not in (select city from customers);
+------+---------+
| snum | sname   |
+------+---------+
| 1007 | Rifkin  |
| 1003 | Axelrod |
+------+---------+

-- 6. Write a query that selects all orders for amounts greater than any for the customers in
-- London.
select distinct * from orders where amt > 
(select min(amt) from orders where cnum = any(select cnum from customers where city= 'London'));
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
-- 7. Extract all the orders of Motika.

SELECT * FROM orders where snum = (select snum from salespeople where sname='Motika');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
+------+---------+------------+------+------+


8)
 select distinct * from orders where snum = (select snum from salespeople where snum = all(select snum from customers where city = 'London'));
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+
3 rows in set (0.00 sec)

9)
select snum,sname from salespeople where snum=any(select snum from customers group by snum having count(cname)>1);
+------+--------+
| snum | sname  |
+------+--------+
| 1001 | Peel   |
| 1002 | Serres |
+------+--------+
2 rows in set (0.00 sec)

10)
select snum,sname,city from salespeople where snum=any(select snum from customers group by snum having count(cname)>1);
+------+--------+----------+
| snum | sname  | city     |
+------+--------+----------+
| 1001 | Peel   | London   |
| 1002 | Serres | San Jose |
+------+--------+----------+
2 rows in set (0.00 sec)

11)
select cnum,cname from customers where rating>(select max(rating) from customers where city = 'rome');
+------+----------+
| cnum | cname    |
+------+----------+
| 2004 | Grass    |
| 2008 | Cisneros |
+------+----------+
2 rows in set (0.00 sec)

12)
select * from orders where amt > (select min(amt) from orders where odate = '1990-10-04');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3010 |  309.95 | 1990-10-04 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+
8 rows in set (0.00 sec)

13)
 select * from orders where amt < (select max(amt) from orders where cnum = any(select cnum from customers where city = 'san jose'));
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3010 |  309.95 | 1990-10-04 | 2004 | 1002 |
+------+---------+------------+------+------+
8 rows in set (0.00 sec)


14)
 select * from customers where rating > all(select cnum from customers where city='Paris');
+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
+------+----------+----------+--------+------+
7 rows in set (0.00 sec)
