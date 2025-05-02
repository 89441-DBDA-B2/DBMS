-- 1. Display the PNAME and COLOR from the P table for the CITY=”London”.

SELECT Pname,color FROM P WHERE CITY="London";
+-------+-------+
| Pname | color |
+-------+-------+
| Nut   | Red   |
| Bolt  | Green |
| Cog   | Red   |
| Cog   | Red   |
+-------+-------+


-- 2. Display all the Suppliers from London.
SELECT * FROM S WHERE city="London";
+----+-------+--------+--------+
| S# | Sname | status | city   |
+----+-------+--------+--------+
| S1 | Smith |     20 | London |
| S3 | Blake |     30 | London |
| S4 | Clark |     20 | London |
+----+-------+--------+--------+


-- 3. Display all the Suppliers from Paris or Athens.

 SELECT * FROM S WHERE city IN("London","Athens");
+----+-------+--------+--------+
| S# | Sname | status | city   |
+----+-------+--------+--------+
| S1 | Smith |     20 | London |
| S3 | Blake |     30 | London |
| S4 | Clark |     20 | London |
| S5 | Adams |     30 | Athens |
+----+-------+--------+--------+

-- 4. Display all the Jobs in Athens.
SELECT Jname FROM J WHERE City="Athens";
+---------+
| Jname   |
+---------+
| Reader  |
| Console |
| Reader  |
| Console |
+---------+

-- 5. Display all the Part names with the weight between 12 and 14 (inclusive of both).
SELECT Pname, weights FROM P WHERE weight BETWEEN  12 AND 14;
+-------+--------+
| Pname | weight |
+-------+--------+
| Nut   |     12 |
| Cam   |     12 |
+-------+--------+

-- 6. Display all the Suppliers with a Status greater than or equal to 20.
SELECT * FROM S WHERE status >= 20;
-- 7. Display all the Suppliers except the Suppliers from London.

ysql> SELECT * FROM S WHERE status >= 20;
+----+-------+--------+--------+
| S# | Sname | status | city   |
+----+-------+--------+--------+
| S1 | Smith |     20 | London |
| S3 | Blake |     30 | London |
| S4 | Clark |     20 | London |
| S5 | Adams |     30 | Athens |
+----+-------+--------+--------+
-- 8. Display only the Cities from where the Suppliers come from.
SELECT DISTINCT(CITY) FROM S;
+--------+
| CITY   |
+--------+
| London |
| Paris  |
| Athens |
+--------+

-- 9. Display the Supplier table in the descending order of CITY.

SELECT * FROM S ORDER BY CITY asc;
-- 10. Display the Part Table in the ascending order of CITY 
-- and within the city in the ascending order of Part names.
 SELECT * FROM P ORDER BY Pname,city asc;
+----+-------+-------+--------+--------+
| P# | Pname | color | weight | city   |
+----+-------+-------+--------+--------+
| P2 | Bolt  | Green |     17 | London |
| P5 | Cam   | Blue  |     12 | Paris  |
| P6 | Cog   | Red   |     19 | London |
| P6 | Cog   | Red   |     19 | London |
| P1 | Nut   | Red   |     12 | London |
| P7 | RAM   | pink  |     20 | India  |
| P3 | Screw | Blue  |     17 | Rome   |
| P4 | Screw | Red   |     17 | Rome   |
+----+-------+-------+--------+--------+

-- 11. Display all the Suppliers with a status between 10 and 20.
SELECT * FROM S WHERE status BETWEEN 10 AND 20; 
+----+-------+--------+--------+
| S# | Sname | status | city   |
+----+-------+--------+--------+
| S1 | Smith |     20 | London |
| S2 | Jones |     10 | Paris  |
| S4 | Clark |     20 | London |
+----+-------+--------+--------+
-- 12. Display all the Parts and their Weight, which are not in the range of 10 and 15.
SELECT Pname, weight FROM P WHERE weight BETWEEN 10 AND 15;
+-------+--------+
| Pname | weight |
+-------+--------+
| Nut   |     12 |
| Cam   |     12 |
+-------+--------+

