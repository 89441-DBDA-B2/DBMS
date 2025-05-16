-- Note : To solve below queries use “sales” database
-- 1. Write a query that lists each order number followed by the name of the customer who
-- made the order.


SELECT  o.onum, c.cname  
FROM customers c 
INNER JOIN orders o ON c.cnum = o.cnum;

+------+----------+
| onum | cname    |
+------+----------+
| 3001 | Cisneros |
| 3003 | Hoffman  |
| 3002 | Pereira  |
| 3005 | Liu      |
| 3006 | Cisneros |
| 3009 | Giovanni |
| 3007 | Grass    |
| 3008 | Clemens  |
| 3010 | Grass    |
| 3011 | Clemens  |
+------+----------+


-- 2. Write a query that gives the names of both the salesperson and the customer for
-- each order along with the order number.
-- INNER JOINs (default JOIN)


SELECT  s.sname person_name, c.cname customer_name, o.onum order_number FROM orders o
JOIN customers c ON o.cnum = c.cnum
JOIN salespeople s ON o.snum = s.snum;  

+-------------+---------------+--------------+
| person_name | customer_name | order_number |
+-------------+---------------+--------------+
| Peel        | Hoffman       |         3003 |
| Axelrod     | Giovanni      |         3009 |
| Serres      | Liu           |         3005 |
| Serres      | Grass         |         3010 |
| Serres      | Grass         |         3007 |
| Peel        | Clemens       |         3011 |
| Peel        | Clemens       |         3008 |
| Rifkin      | Cisneros      |         3006 |
| Rifkin      | Cisneros      |         3001 |
| Motika      | Pereira       |         3002 |
+-------------+---------------+--------------+

-- 3. Write a query that produces all customers serviced by salespeople with a commission
-- above 12%. Output the customer’s name, the salesperson’s name, and the salesperson’s rate of commission.

SELECT c.cname customer_name, s.sname sales_person_name , s.comm commission_rate FROM customers c
JOIN salespeople s ON s.snum = c.snum
WHERE s.comm > 0.12;


+---------------+-------------------+-----------------+
| customer_name | sales_person_name | commission_rate |
+---------------+-------------------+-----------------+
| Liu           | Serres            |            0.13 |
| Grass         | Serres            |            0.13 |
| Cisneros      | Rifkin            |            0.15 |
+---------------+-------------------+-----------------+

-- 4. Write a query that calculates the amount of the salesperson’s commission on each
-- order by a customer with a rating above 100.

SELECT o.onum  onum, o.amt * s.comm sales_person_comm FROM orders o
JOIN customers c ON o.cnum = c.cnum
JOIN salespeople s ON o.snum = s.snum
WHERE c.rating > 100;

+------+-------------------+
| onum | sales_person_comm |
+------+-------------------+
| 3010 |           40.2935 |
| 3007 |            9.8475 |
| 3005 |          670.8585 |
| 3006 |          164.7240 |
| 3001 |            2.8035 |
| 3009 |          171.3230 |
+------+-------------------+


-- 5. Write a query that produces all pairs of salespeople who are living in the same
-- city.Exclude combinations of salespeople with themselves as well as duplicate rows
-- with the order reversed.
SELECT s1.sname salesperson1, s2.sname salesperson2 , s1.city FROM salespeople s1 
JOIN salespeople s2 ON s1.city = s2.city
AND s1.snum>s2.snum;

+--------------+--------------+--------+
| salesperson1 | salesperson2 | city   |
+--------------+--------------+--------+
| Motika       | Peel         | London |
+--------------+--------------+--------+

------------------------------------------------------------------------------------------------------------
-- Note : To solve below queries use “spj” database
-- 1. Display the Supplier name and the Quantity sold.

select s.Sname supplier_name, SUM(sp.QTY) as quantity_sold FROM S s
JOIN sp ON s.`s#` = sp.`S#` GROUP BY s.Sname;

+---------------+---------------+
| supplier_name | quantity_sold |
+---------------+---------------+
| Smith         |           900 |
| Jones         |          5500 |
| Blake         |           700 |
| Clark         |           600 |
| Adams         |           800 |
+---------------+---------------+


-- 2. Display the Part name and Quantity sold.

SELECT p.Pname , SUM(sp.QTY) FROM P p 
JOIN sp ON p.`p#` = sp.`p#` 
GROUP BY p.Pname;

+-------+-------------+
| Pname | SUM(sp.QTY) |
+-------+-------------+
| Nut   |         900 |
| Screw |        6500 |
| Cam   |         200 |
| Cog   |        1200 |
| Bolt  |         300 |
+-------+-------------+

-- 3. Display the Job name and Quantity sold.
SELECT j.Jname, SUM(sp.QTY) FROM J j
JOIN sp ON j.`J#`=sp.`J#`
GROUP BY j.Jname;

+----------+-------------+
| Jname    | SUM(sp.QTY) |
+----------+-------------+
| Punch    |         800 |
| Sorter   |         800 |
| Console  |        2800 |
| Reader   |        1000 |
| Collator |         600 |
| Tape     |        2000 |
+----------+-------------+

-- 4. Display the Supplier name, Part name, Job name and Quantity sold.
SELECT 
    s.Sname Supplier_name,
    p.Pname Part_name, 
    j.Jname Job_name,
    sp.QTY 
FROM sp
JOIN S s ON lower(sp.`S#`) = lower(s.`S#`)
JOIN P p ON lower(sp.`P#`) = lower(p.`P#`)
JOIN J j ON lower(sp.`J#`) = lower(j.`J#`);

+---------------+-----------+----------+------+
| Supplier_name | Part_name | Job_name | QTY  |
+---------------+-----------+----------+------+
| Smith         | Nut       | Punch    |  200 |
| Smith         | Nut       | Sorter   |  200 |
| Smith         | Nut       | Console  |  700 |
| Smith         | Nut       | Console  |  700 |
| Jones         | Screw     | Punch    |  400 |
| Jones         | Screw     | Sorter   |  400 |
| Jones         | Screw     | Reader   |  200 |
| Jones         | Screw     | Reader   |  200 |
| Jones         | Screw     | Console  |  500 |
| Jones         | Screw     | Console  |  500 |
| Jones         | Screw     | Collator |  600 |
| Jones         | Screw     | Tape     |  800 |
| Jones         | Screw     | Tape     |  800 |
| Blake         | Screw     | Punch    |  200 |
| Blake         | Screw     | Sorter   |  200 |
| Clark         | Cog       | Reader   |  300 |
| Clark         | Cog       | Reader   |  300 |
| Clark         | Cog       | Reader   |  300 |
| Clark         | Cog       | Reader   |  300 |
| Clark         | Cog       | Tape     |  300 |
| Clark         | Cog       | Tape     |  300 |
| Adams         | Bolt      | Console  |  200 |
| Adams         | Bolt      | Console  |  200 |
| Adams         | Bolt      | Tape     |  100 |
+---------------+-----------+----------+------+
24 rows in set (0.00 sec)


-- 5. Display the Supplier name, Supplying Parts to a Job in the same City.
 select distinct s.sname,j.city from s inner join p on p.city = s.city inner join j on s.city=j.city group by j.city,s.sname;

SELECT 
    DISTINCT S.Sname 
FROM S
JOIN P  ON S.City = P.City
JOIN J  ON S.City = J.City
GROUP BY S.Sname, J.City;

+-------+
| Sname |
+-------+
| Blake |
| Clark |
| Jones |
| Smith |
+-------+

-- 6. Display the Part name that is ‘Red’ is color, and the Quantity sold.

SELECT P.Pname, SUM(sp.QTY) from P 
JOIN sp on sp.`P#` = P.`P#`
WHERE P.color = 'Red' group by P.Pname;

+-------+-------------+
| Pname | SUM(sp.QTY) |
+-------+-------------+
| Nut   |         900 |
| Screw |        1000 |
| Cog   |        1200 |
+-------+-------------+

-- 7. Display all the Quantity sold by Suppliers with the Status = 20.

SELECT SUM(sp.QTY) FROM sp
JOIN S ON S.`S#`= sp.`S#`
WHERE status = 20;  

+-------------+
| SUM(sp.QTY) |
+-------------+
|        1500 |
+-------------+

-- 8. Display all the Parts and Quantity with a Weight > 14.

SELECT P.Pname, SUM(sp.QTY) FROM P 
JOIN sp ON  P.`P#`=sp.`P#`
WHERE weight >14
GROUP BY P.Pname; 

+-------+-------------+
| Pname | SUM(sp.QTY) |
+-------+-------------+
| Screw |        6500 |
| Cog   |        1200 |
| Bolt  |         300 |
+-------+-------------+

-- 9. Display all the Job names and City, which has bought more than 500 Parts.
SELECT J.Jname job_name, J.City job_city FROM J
JOIN sp ON J.`J#`= sp.`J#`
GROUP BY J.Jname, J.City
HAVING SUM(sp.QTY)>500;

+----------+----------+
| job_name | job_city |
+----------+----------+
| Punch    | Rome     |
| Sorter   | Paris    |
| Console  | Athens   |
| Reader   | Athens   |
| Collator | London   |
| Tape     | London   |
+----------+----------+

-- 10. Display all the Part names and Quantity sold that have a Weight less than 15.

SELECT P.Pname , SUM(sp.QTY) FROM P
JOIN sp ON  P.`P#` = sp.`P#`
WHERE weight <15
GROUP BY P.Pname;

+-------+-------------+
| Pname | SUM(sp.QTY) |
+-------+-------------+
| Nut   |         900 |
| Cam   |         200 |
+-------+-------------+

-- 11. Display all the Suppliers with the same Status as the supplier, ‘CLARK’.

SELECT S.Sname , S.status FROM S 
WHERE S.status = 20 AND S.sname != 'clark';

+-------+--------+
| Sname | status |
+-------+--------+
| Smith |     20 |
+-------+--------+

-- 12. Display all the Parts which have more Weight than any Red parts.


SELECT p.pname , p.color, p.weight , p1.color from P p
CROSS join P p1 WHERE p1.color = 'Red'
GROUP BY p.pname , p.color , p.weight, p1.color
HAVING p.weight>min(p1.weight);

+-------+-------+--------+-------+
| pname | color | weight | color |
+-------+-------+--------+-------+
| Bolt  | Green |     17 | Red   |
| Screw | Blue  |     17 | Red   |
| Screw | Red   |     17 | Red   |
| Cog   | Red   |     19 | Red   |
| RAM   | pink  |     20 | Red   |
+-------+-------+--------+-------+

 
-- 13. Display all the Jobs going on in the same city as the job ‘TAPE’.

select j.jname,j.city from j where j.city = 'London' and j.jname!='Tape';


-- 14. Display all the Parts with Weight less than any the Green parts.
select p.Pname ,p.color , p.weight ,p1.color FROM P p 
CROSS JOIN P p1 where p1.color = 'Green' 
GROUP BY p.Pname ,p.color , p.weight , p1.color
HAVING p.weight = min(p1.weight);

-- 15. Display the name of the Supplier who has sold the maximum Quantity (in onesale).
-- 16. Display the name of the Supplier who has sold the maximum overall Quantity
-- (sumof Sales).