-- Note : To solve below queries use “sales” database
-- 1. Write a query that counts the number of salespeople registering orders for eachday.
-- (If a salesperson has more than one order on a given day, he or she should be
-- counted only once.).

SELECT 
    odate,
    COUNT(DISTINCT snum) AS salesperson_count
FROM orders
GROUP BY odate;

+------------+-------------------+
| odate      | salesperson_count |
+------------+-------------------+
| 1990-10-03 |                 4 |
| 1990-10-04 |                 3 |
+------------+-------------------+


-- 2. Write a query on the Customers table that will find the highest rating in each city. Put
-- the output in this form:
-- For the city (city), the highest rating is : (rating).

SELECT city, MAX(rating) rating FROM customers GROUP BY city;

+----------+--------+
| city     | rating |
+----------+--------+
| London   |    100 |
| Rome     |    200 |
| San Jose |    300 |
| Berlin   |    300 |
+----------+--------+


-- 3 Write a query that totals the orders for each day and places the results in descending
-- order.
SELECT 
    odate,
    SUM(amt) AS total_orders
FROM orders
GROUP BY odate
ORDER BY total_orders DESC;

+------------+--------------+
| odate      | total_orders |
+------------+--------------+
| 1990-10-04 |     16713.81 |
| 1990-10-03 |      8944.59 |
+------------+--------------+

-- 4. Write a query that selects the total amount in orders for each salesperson for whom
-- this total is greater than the average amount of the order in the table.
-- (Note Use the average amount value directly →2565.84)
SELECT 
    snum,
    SUM(amt) AS total_sales
FROM orders
GROUP BY snum
HAVING SUM(amt) > 2565.84;
+------+-------------+
| snum | total_sales |
+------+-------------+
| 1001 |    15382.07 |
| 1002 |     5546.15 |
+------+-------------+

-- 5. Write a query that selects the highest rating in each city.

SELECT 
    city,
    MAX(rating) AS highest_rating
FROM customers
GROUP BY city;

+----------+----------------+
| city     | highest_rating |
+----------+----------------+
| London   |            100 |
| Rome     |            200 |
| San Jose |            300 |
| Berlin   |            300 |
+----------+----------------+


-- 6. Largest order taken by each salesperson with order value more than Rs.3000.

SELECT 
    snum,
    MAX(amt) AS largest_order
FROM orders
WHERE amt > 3000
GROUP BY snum;

+------+-------------+
| snum | order_value |
+------+-------------+
| 1002 |     5160.45 |
| 1001 |     9891.88 |
+------+-------------+

-- 7. select each customer smallest orrder

SELECT cnum, MIN(amt) 
from orders 
GROUP BY cnum; 

+------+----------+
| cnum | MIN(amt) |
+------+----------+
| 2008 |    18.69 |
| 2001 |   767.19 |
| 2007 |  1900.10 |
| 2003 |  5160.45 |
| 2002 |  1713.23 |
| 2004 |    75.75 |
| 2006 |  4723.00 |
+------+----------+



-- Note : To solve below queries use “hr” database
-- 1. Display manager ID and number of employees managed by the manager.
SELECT MANAGER_ID, COUNT(*) 
FROM EMPLOYEES 
GROUP BY MANAGER_ID

+------------+----------+
| MANAGER_ID | COUNT(*) |
+------------+----------+
|          0 |        1 |
|        100 |       14 |
|        101 |        5 |
|        102 |        1 |
|        103 |        4 |
|        108 |        5 |
|        114 |        5 |
|        120 |        8 |
|        121 |        8 |
|        122 |        8 |
|        123 |        8 |
|        124 |        8 |
|        145 |        6 |
|        146 |        6 |
|        147 |        6 |
|        148 |        6 |
|        149 |        6 |
|        201 |        1 |
|        205 |        1 |
+------------+----------+

-- 2. Display the country ID and number of cities we have in the country.
SELECT 
    COUNTRY_ID, 
    COUNT(*) AS num_cities
FROM CITIES
GROUP BY COUNTRY_ID;
+------------+----------+
| COUNTRY_ID | COUNT(*) |
+------------+----------+
| AR         |        1 |
| AU         |        1 |
| BE         |        1 |
| BR         |        1 |
| CA         |        1 |
| CH         |        1 |
| CN         |        1 |
| DE         |        1 |
| DK         |        1 |
| EG         |        1 |
| FR         |        1 |
| HK         |        1 |
| IL         |        1 |
| IN         |        1 |
| IT         |        1 |
| JP         |        1 |
| KW         |        1 |
| MX         |        1 |
| NG         |        1 |
| NL         |        1 |
| SG         |        1 |
| UK         |        1 |
| US         |        1 |
| ZM         |        1 |
| ZW         |        1 |
+------------+----------+

-- 3. Display average salary of employees in each department who have commission
-- percentage.
SELECT 
    DEPARTMENT_ID,
    AVG(SALARY) AS avg_salary
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
GROUP BY DEPARTMENT_ID;

+---------------+--------------+
| DEPARTMENT_ID | AVG(SALARY)  |
+---------------+--------------+
|             0 |  7000.000000 |
|            10 |  4400.000000 |
|            20 |  9500.000000 |
|            30 |  4150.000000 |
|            40 |  6500.000000 |
|            50 |  3475.555556 |
|            60 |  5760.000000 |
|            70 | 10000.000000 |
|            80 |  8955.882353 |
|            90 | 19333.333333 |
|           100 |  8600.000000 |
|           110 | 10150.000000 |
+---------------+--------------+

-- 4. Display job ID, number of employees, sum of salary, and difference between highest
-- salary and lowest salary of the employees of the job.
SELECT 
    JOB_ID,
    COUNT(*) AS num_employees,
    SUM(SALARY) AS total_salary,
    MAX(SALARY) - MIN(SALARY) AS salary_difference
FROM EMPLOYEES
GROUP BY JOB_ID;

+------------+---------------+--------------+-------------------+
| JOB_ID     | num_employees | total_salary | salary_difference |
+------------+---------------+--------------+-------------------+
| AC_ACCOUNT |             1 |      8300.00 |              0.00 |
| AC_MGR     |             1 |     12000.00 |              0.00 |
| AD_ASST    |             1 |      4400.00 |              0.00 |
| AD_PRES    |             1 |     24000.00 |              0.00 |
| AD_VP      |             2 |     34000.00 |              0.00 |
| FI_ACCOUNT |             5 |     39600.00 |           2100.00 |
| FI_MGR     |             1 |     12000.00 |              0.00 |
| HR_REP     |             1 |      6500.00 |              0.00 |
| IT_PROG    |             5 |     28800.00 |           4800.00 |
| MK_MAN     |             1 |     13000.00 |              0.00 |
| MK_REP     |             1 |      6000.00 |              0.00 |
| PR_REP     |             1 |     10000.00 |              0.00 |
| PU_CLERK   |             5 |     13900.00 |            600.00 |
| PU_MAN     |             1 |     11000.00 |              0.00 |
| SA_MAN     |             5 |     61000.00 |           3500.00 |
| SA_REP     |            30 |    250500.00 |           5400.00 |
| SH_CLERK   |            20 |     64300.00 |           1700.00 |
| ST_CLERK   |            20 |     55700.00 |           1500.00 |
| ST_MAN     |             5 |     36400.00 |           2400.00 |
+------------+---------------+--------------+-------------------+

-- 5. Display job ID for jobs with average salary more than 10000.

SELECT 
    JOB_ID,
    COUNT(*) AS num_employees,
    AVG(SALARY) AS avg_sal
FROM employees
GROUP BY JOB_ID
HAVING AVG(SALARY) > 10000;

+---------+---------------+--------------+
| JOB_ID  | num_employees | avg_sal      |
+---------+---------------+--------------+
| AC_MGR  |             1 | 12000.000000 |
| AD_PRES |             1 | 24000.000000 |
| AD_VP   |             2 | 17000.000000 |
| FI_MGR  |             1 | 12000.000000 |
| MK_MAN  |             1 | 13000.000000 |
| PU_MAN  |             1 | 11000.000000 |
| SA_MAN  |             5 | 12200.000000 |
+---------+---------------+--------------+

-- 6. Display years in which more than 10 employees joined.
SELECT 
    YEAR(HIRE_DATE) AS hire_year,
    COUNT(*) AS num_employees
FROM employees
GROUP BY YEAR(HIRE_DATE)
HAVING COUNT(*) > 10;


+-----------+---------------+
| hire_year | num_employees |
+-----------+---------------+
|      1987 |           107 |
+-----------+---------------+
-- 7. Display departments in which more than five employees have commission
-- percentage.
SELECT 
    DEPARTMENT_ID,
    COUNT(*) AS emp_with_commission
FROM employees
WHERE COMMISSION_PCT IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 5;

+---------------+---------------------+
| DEPARTMENT_ID | emp_with_commission |
+---------------+---------------------+
|            30 |                   6 |
|            50 |                  45 |
|            80 |                  34 |
|           100 |                   6 |
+---------------+---------------------+

-- 8. Display employee ID for employees who did more than one job in the past.
SELECT 
    EMPLOYEE_ID
FROM 
    job_history
GROUP BY 
    EMPLOYEE_ID
HAVING 
    COUNT(DISTINCT JOB_ID) > 1;

+-------------+
| EMPLOYEE_ID |
+-------------+
|         101 |
|         176 |
|         200 |
+-------------+


-- 9. Display job ID of jobs that were done by more than 3 employees for more than 100
-- days.
SELECT JOB_ID
FROM employees
WHERE (DATEDIFF(CURDATE(), HIRE_DATE)) > 100
GROUP BY JOB_ID
HAVING COUNT(*) > 3;

+------------+
| JOB_ID     |
+------------+
| FI_ACCOUNT |
| IT_PROG    |
| PU_CLERK   |
| SA_MAN     |
| SA_REP     |
| SH_CLERK   |
| ST_CLERK   |
| ST_MAN     |
+------------+

-- 10. Display department ID, year, and Number of employees joined.

SELECT DEPARTMENT_ID , YEAR(HIRE_DATE) year_joined , COUNT(*) num_emp  
FROM employees 
GROUP BY DEPARTMENT_ID , YEAR(HIRE_DATE)
ORDER BY DEPARTMENT_ID ,  year_joined ;


+---------------+-------------+---------+
| DEPARTMENT_ID | year_joined | num_emp |
+---------------+-------------+---------+
|             0 |        1987 |       1 |
|            10 |        1987 |       1 |
|            20 |        1987 |       2 |
|            30 |        1987 |       6 |
|            40 |        1987 |       1 |
|            50 |        1987 |      45 |
|            60 |        1987 |       5 |
|            70 |        1987 |       1 |
|            80 |        1987 |      34 |
|            90 |        1987 |       3 |
|           100 |        1987 |       6 |
|           110 |        1987 |       2 |
+---------------+-------------+---------+

-- 11. Display how many employees joined in each month of the current year.

SELECT MONTH(HIRE_DATE) join_date , COUNT(*) 
FROM employees
WHERE YEAR(HIRE_DATE) = YEAR(CURDATE())
GROUP BY join_date
ORDER BY join_date 


Empty set (0.00 sec)


-- 12. Display details of departments in which the maximum salary is more than 10000.

SELECT DEPARTMENT_ID FROM employees 
GROUP BY DEPARTMENT_ID 
HAVING MAX(SALARY) >10000;

+---------------+
| DEPARTMENT_ID |
+---------------+
|            20 |
|            30 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+
