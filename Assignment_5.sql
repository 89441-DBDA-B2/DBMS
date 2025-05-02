-- 1. Display first name and last name after converting the first letter of each name to
-- upper case and the rest to lower case.
SELECT 
   CONCAT(
    UPPER(SUBSTRING(FIRST_NAME, 1,1)),
    LOWER(SUBSTRING(FIRST_NAME, 2))
   ) AS formatted_first_name,
   CONCAT(
    UPPER(SUBSTRING(LAST_NAME, 1,1)),
    LOWER(SUBSTRING(LAST_NAME, 2))
   )AS formatted_last_name
   FROM employees;

+----------------------+---------------------+
| formatted_first_name | formatted_last_name |
+----------------------+---------------------+
| Ellen                | Abel                |
| Sundar               | Ande                |
| Mozhe                | Atkinson            |
| David                | Austin              |
| Hermann              | Baer                |
| Shelli               | Baida               |
| Amit                 | Banda               |
| Elizabeth            | Bates               |
| Sarah                | Bell                |
| David                | Bernstein           |
| Laura                | Bissot              |
| Harrison             | Bloom               |
| Alexis               | Bull                |
| Anthony              | Cabrio              |
| Gerald               | Cambrault           |
| Nanette              | Cambrault           |
| John                 | Chen                |
| Kelly                | Chung               |
| Karen                | Colmenares          |
| Curtis               | Davies              |
| Lex                  | De haan             |
| Julia                | Dellinger           |
| Jennifer             | Dilly               |
| Louise               | Doran               |
| Bruce                | Ernst               |
| Alberto              | Errazuriz           |
| Britney              | Everett             |
| Daniel               | Faviet              |
| Pat                  | Fay                 |
| Kevin                | Feeney              |
| Jean                 | Fleaur              |
| Tayler               | Fox                 |
| Adam                 | Fripp               |
| Timothy              | Gates               |
| Ki                   | Gee                 |
| Girard               | Geoni               |
| William              | Gietz               |
| Douglas              | Grant               |
| Kimberely            | Grant               |
| Nancy                | Greenberg           |
| Danielle             | Greene              |
| Peter                | Hall                |
| Michael              | Hartstein           |
| Shelley              | Higgins             |
| Guy                  | Himuro              |
| Alexander            | Hunold              |
| Alyssa               | Hutton              |
| Charles              | Johnson             |
| Vance                | Jones               |
| Payam                | Kaufling            |
| Alexander            | Khoo                |
| Janette              | King                |
| Steven               | King                |
| Neena                | Kochhar             |
| Sundita              | Kumar               |
| Renske               | Ladwig              |
| James                | Landry              |
| David                | Lee                 |
| Jack                 | Livingston          |
| Diana                | Lorentz             |
| Jason                | Mallin              |
| Steven               | Markle              |
| James                | Marlow              |
| Mattea               | Marvins             |
| Randall              | Matos               |
| Susan                | Mavris              |
| Samuel               | Mccain              |
| Allan                | Mcewen              |
| Irene                | Mikkilineni         |
| Kevin                | Mourgos             |
| Julia                | Nayer               |
| Donald               | Oconnell            |
| Christopher          | Olsen               |
| Tj                   | Olson               |
| Lisa                 | Ozer                |
| Karen                | Partners            |
| Valli                | Pataballa           |
| Joshua               | Patel               |
| Randall              | Perkins             |
| Hazel                | Philtanker          |
| Luis                 | Popp                |
| Trenna               | Rajs                |
| Den                  | Raphaely            |
| Michael              | Rogers              |
| John                 | Russell             |
| Nandita              | Sarchand            |
| Ismael               | Sciarra             |
| John                 | Seo                 |
| Sarath               | Sewall              |
| Lindsey              | Smith               |
| William              | Smith               |
| Stephen              | Stiles              |
| Martha               | Sullivan            |
| Patrick              | Sully               |
| Jonathon             | Taylor              |
| Winston              | Taylor              |
| Sigal                | Tobias              |
| Peter                | Tucker              |
| Oliver               | Tuvault             |
| Jose manuel          | Urman               |
| Peter                | Vargas              |
| Clara                | Vishney             |
| Shanta               | Vollman             |
| Alana                | Walsh               |
| Matthew              | Weiss               |
| Jennifer             | Whalen              |
| Eleni                | Zlotkey             |
+----------------------+---------------------+

-- 2. Display the first word in job title.
    SELECT 
            SUBSTRING_INDEX(JOB_TITLE, ' ', 1)
    AS first_word
    FROM jobs;

    +----------------+
| first_word     |
+----------------+
| President      |
| Administration |
| Administration |
| Finance        |
| Accountant     |
| Accounting     |
| Public         |
| Sales          |
| Sales          |
| Purchasing     |
| Purchasing     |
| Stock          |
| Stock          |
| Shipping       |
| Programmer     |
| Marketing      |
| Marketing      |
| Human          |
| Public         |
+----------------+

-- 3. Display the length of first name for employees where last name contain character ‘b’
-- after 3rd position.

SELECT FIRST_NAME, LENGTH(FIRST_NAME) AS length_of_first
FROM employees
WHERE 
SUBSTRING(LAST_NAME, 4) LIKE '%b%';

+------------+-----------------+
| FIRST_NAME | length_of_first |
+------------+-----------------+
| Gerald     |               6 |
| Nanette    |               7 |
| Nancy      |               5 |
| Valli      |               5 |
+------------+-----------------+


-- 4. Display first name in upper case and email address in lower case for employees
-- where the first name and email address are same irrespective of the case.
SELECT 
        UPPER(FIRST_NAME) first_name, LOWER(EMAIL) last_name
FROM employees
WHERE 
 LOWER(FIRST_NAME)= LOWER(LAST_NAME);


Empty set (0.00 sec)


-- 5. Display first name, salary, and round the salary to thousands.

SELECT FIRST_NAME, LAST_NAME , ROUND(SALARY, -3) round_sal FROM employees;  

+-------------+-------------+-----------+
| FIRST_NAME  | LAST_NAME   | round_sal |
+-------------+-------------+-----------+
| Steven      | King        |     24000 |
| Neena       | Kochhar     |     17000 |
| Lex         | De Haan     |     17000 |
| Alexander   | Hunold      |      9000 |
| Bruce       | Ernst       |      6000 |
| David       | Austin      |      5000 |
| Valli       | Pataballa   |      5000 |
| Diana       | Lorentz     |      4000 |
| Nancy       | Greenberg   |     12000 |
| Daniel      | Faviet      |      9000 |
| John        | Chen        |      8000 |
| Ismael      | Sciarra     |      8000 |
| Jose Manuel | Urman       |      8000 |
| Luis        | Popp        |      7000 |
| Den         | Raphaely    |     11000 |
| Alexander   | Khoo        |      3000 |
| Shelli      | Baida       |      3000 |
| Sigal       | Tobias      |      3000 |
| Guy         | Himuro      |      3000 |
| Karen       | Colmenares  |      3000 |
| Matthew     | Weiss       |      8000 |
| Adam        | Fripp       |      8000 |
| Payam       | Kaufling    |      8000 |
| Shanta      | Vollman     |      7000 |
| Kevin       | Mourgos     |      6000 |
| Julia       | Nayer       |      3000 |
| Irene       | Mikkilineni |      3000 |
| James       | Landry      |      2000 |
| Steven      | Markle      |      2000 |
| Laura       | Bissot      |      3000 |
| Mozhe       | Atkinson    |      3000 |
| James       | Marlow      |      3000 |
| TJ          | Olson       |      2000 |
| Jason       | Mallin      |      3000 |
| Michael     | Rogers      |      3000 |
| Ki          | Gee         |      2000 |
| Hazel       | Philtanker  |      2000 |
| Renske      | Ladwig      |      4000 |
| Stephen     | Stiles      |      3000 |
| John        | Seo         |      3000 |
| Joshua      | Patel       |      3000 |
| Trenna      | Rajs        |      4000 |
| Curtis      | Davies      |      3000 |
| Randall     | Matos       |      3000 |
| Peter       | Vargas      |      3000 |
| John        | Russell     |     14000 |
| Karen       | Partners    |     14000 |
| Alberto     | Errazuriz   |     12000 |
| Gerald      | Cambrault   |     11000 |
| Eleni       | Zlotkey     |     11000 |
| Peter       | Tucker      |     10000 |
| David       | Bernstein   |     10000 |
| Peter       | Hall        |      9000 |
| Christopher | Olsen       |      8000 |
| Nanette     | Cambrault   |      8000 |
| Oliver      | Tuvault     |      7000 |
| Janette     | King        |     10000 |
| Patrick     | Sully       |     10000 |
| Allan       | McEwen      |      9000 |
| Lindsey     | Smith       |      8000 |
| Louise      | Doran       |      8000 |
| Sarath      | Sewall      |      7000 |
| Clara       | Vishney     |     11000 |
| Danielle    | Greene      |     10000 |
| Mattea      | Marvins     |      7000 |
| David       | Lee         |      7000 |
| Sundar      | Ande        |      6000 |
| Amit        | Banda       |      6000 |
| Lisa        | Ozer        |     12000 |
| Harrison    | Bloom       |     10000 |
| Tayler      | Fox         |     10000 |
| William     | Smith       |      7000 |
| Elizabeth   | Bates       |      7000 |
| Sundita     | Kumar       |      6000 |
| Ellen       | Abel        |     11000 |
| Alyssa      | Hutton      |      9000 |
| Jonathon    | Taylor      |      9000 |
| Jack        | Livingston  |      8000 |
| Kimberely   | Grant       |      7000 |
| Charles     | Johnson     |      6000 |
| Winston     | Taylor      |      3000 |
| Jean        | Fleaur      |      3000 |
| Martha      | Sullivan    |      3000 |
| Girard      | Geoni       |      3000 |
| Nandita     | Sarchand    |      4000 |
| Alexis      | Bull        |      4000 |
| Julia       | Dellinger   |      3000 |
| Anthony     | Cabrio      |      3000 |
| Kelly       | Chung       |      4000 |
| Jennifer    | Dilly       |      4000 |
| Timothy     | Gates       |      3000 |
| Randall     | Perkins     |      3000 |
| Sarah       | Bell        |      4000 |
| Britney     | Everett     |      4000 |
| Samuel      | McCain      |      3000 |
| Vance       | Jones       |      3000 |
| Alana       | Walsh       |      3000 |
| Kevin       | Feeney      |      3000 |
| Donald      | OConnell    |      3000 |
| Douglas     | Grant       |      3000 |
| Jennifer    | Whalen      |      4000 |
| Michael     | Hartstein   |     13000 |
| Pat         | Fay         |      6000 |
| Susan       | Mavris      |      7000 |
| Hermann     | Baer        |     10000 |
| Shelley     | Higgins     |     12000 |
| William     | Gietz       |      8000 |
+-------------+-------------+-----------+

-- 6. Display employee ID and the date on which he ended his previous job.
SELECT EMPLOYEE_ID , END_DATE 
 FROM job_history ;

+-------------+------------+
| EMPLOYEE_ID | END_DATE   |
+-------------+------------+
|         102 | 1998-07-24 |
|         101 | 1993-10-27 |
|         101 | 1997-03-15 |
|         201 | 1999-12-19 |
|         114 | 1999-12-31 |
|         122 | 1999-12-31 |
|         200 | 1993-06-17 |
|         176 | 1998-12-31 |
|         176 | 1999-12-31 |
|         200 | 1998-12-31 |
|           0 | 0000-00-00 |
+-------------+------------+


-- 7. Display first name and date of first salary of the employees.
-- (Consider 1st day of month as salary day) HINT: LAST_DAY.
SELECT FIRST_NAME ,DATE_SUB(HIRE_DATE, INTERVAL 1 DAY) employees; 
+-------------+-------------------------------------+
| FIRST_NAME  | DATE_SUB(HIRE_DATE, INTERVAL 1 DAY) |
+-------------+-------------------------------------+
| Steven      | 1987-06-16                          |
| Neena       | 1987-06-17                          |
| Lex         | 1987-06-18                          |
| Alexander   | 1987-06-19                          |
| Bruce       | 1987-06-20                          |
| David       | 1987-06-21                          |
| Valli       | 1987-06-22                          |
| Diana       | 1987-06-23                          |
| Nancy       | 1987-06-24                          |
| Daniel      | 1987-06-25                          |
| John        | 1987-06-26                          |
| Ismael      | 1987-06-27                          |
| Jose Manuel | 1987-06-28                          |
| Luis        | 1987-06-29                          |
| Den         | 1987-06-30                          |
| Alexander   | 1987-07-01                          |
| Shelli      | 1987-07-02                          |
| Sigal       | 1987-07-03                          |
| Guy         | 1987-07-04                          |
| Karen       | 1987-07-05                          |
| Matthew     | 1987-07-06                          |
| Adam        | 1987-07-07                          |
| Payam       | 1987-07-08                          |
| Shanta      | 1987-07-09                          |
| Kevin       | 1987-07-10                          |
| Julia       | 1987-07-11                          |
| Irene       | 1987-07-12                          |
| James       | 1987-07-13                          |
| Steven      | 1987-07-14                          |
| Laura       | 1987-07-15                          |
| Mozhe       | 1987-07-16                          |
| James       | 1987-07-17                          |
| TJ          | 1987-07-18                          |
| Jason       | 1987-07-19                          |
| Michael     | 1987-07-20                          |
| Ki          | 1987-07-21                          |
| Hazel       | 1987-07-22                          |
| Renske      | 1987-07-23                          |
| Stephen     | 1987-07-24                          |
| John        | 1987-07-25                          |
| Joshua      | 1987-07-26                          |
| Trenna      | 1987-07-27                          |
| Curtis      | 1987-07-28                          |
| Randall     | 1987-07-29                          |
| Peter       | 1987-07-30                          |
| John        | 1987-07-31                          |
| Karen       | 1987-08-01                          |
| Alberto     | 1987-08-02                          |
| Gerald      | 1987-08-03                          |
| Eleni       | 1987-08-04                          |
| Peter       | 1987-08-05                          |
| David       | 1987-08-06                          |
| Peter       | 1987-08-07                          |
| Christopher | 1987-08-08                          |
| Nanette     | 1987-08-09                          |
| Oliver      | 1987-08-10                          |
| Janette     | 1987-08-11                          |
| Patrick     | 1987-08-12                          |
| Allan       | 1987-08-13                          |
| Lindsey     | 1987-08-14                          |
| Louise      | 1987-08-15                          |
| Sarath      | 1987-08-16                          |
| Clara       | 1987-08-17                          |
| Danielle    | 1987-08-18                          |
| Mattea      | 1987-08-19                          |
| David       | 1987-08-20                          |
| Sundar      | 1987-08-21                          |
| Amit        | 1987-08-22                          |
| Lisa        | 1987-08-23                          |
| Harrison    | 1987-08-24                          |
| Tayler      | 1987-08-25                          |
| William     | 1987-08-26                          |
| Elizabeth   | 1987-08-27                          |
| Sundita     | 1987-08-28                          |
| Ellen       | 1987-08-29                          |
| Alyssa      | 1987-08-30                          |
| Jonathon    | 1987-08-31                          |
| Jack        | 1987-09-01                          |
| Kimberely   | 1987-09-02                          |
| Charles     | 1987-09-03                          |
| Winston     | 1987-09-04                          |
| Jean        | 1987-09-05                          |
| Martha      | 1987-09-06                          |
| Girard      | 1987-09-07                          |
| Nandita     | 1987-09-08                          |
| Alexis      | 1987-09-09                          |
| Julia       | 1987-09-10                          |
| Anthony     | 1987-09-11                          |
| Kelly       | 1987-09-12                          |
| Jennifer    | 1987-09-13                          |
| Timothy     | 1987-09-14                          |
| Randall     | 1987-09-15                          |
| Sarah       | 1987-09-16                          |
| Britney     | 1987-09-17                          |
| Samuel      | 1987-09-18                          |
| Vance       | 1987-09-19                          |
| Alana       | 1987-09-20                          |
| Kevin       | 1987-09-21                          |
| Donald      | 1987-09-22                          |
| Douglas     | 1987-09-23                          |
| Jennifer    | 1987-09-24                          |
| Michael     | 1987-09-25                          |
| Pat         | 1987-09-26                          |
| Susan       | 1987-09-27                          |
| Hermann     | 1987-09-28                          |
| Shelley     | 1987-09-29                          |
| William     | 1987-09-30                          |
+-------------+-------------------------------------+




-- 8. Display first name and experience of the employees.
SELECT 
    first_name,
    DATE_ADD(LAST_DAY(DATE_SUB(hire_date, INTERVAL 1 MONTH)), INTERVAL 1 DAY) AS first_salary_date
FROM 
    employees;
+-------------+-------------------+
| first_name  | first_salary_date |
+-------------+-------------------+
| Steven      | 1987-06-01        |
| Neena       | 1987-06-01        |
| Lex         | 1987-06-01        |
| Alexander   | 1987-06-01        |
| Bruce       | 1987-06-01        |
| David       | 1987-06-01        |
| Valli       | 1987-06-01        |
| Diana       | 1987-06-01        |
| Nancy       | 1987-06-01        |
| Daniel      | 1987-06-01        |
| John        | 1987-06-01        |
| Ismael      | 1987-06-01        |
| Jose Manuel | 1987-06-01        |
| Luis        | 1987-06-01        |
| Den         | 1987-07-01        |
| Alexander   | 1987-07-01        |
| Shelli      | 1987-07-01        |
| Sigal       | 1987-07-01        |
| Guy         | 1987-07-01        |
| Karen       | 1987-07-01        |
| Matthew     | 1987-07-01        |
| Adam        | 1987-07-01        |
| Payam       | 1987-07-01        |
| Shanta      | 1987-07-01        |
| Kevin       | 1987-07-01        |
| Julia       | 1987-07-01        |
| Irene       | 1987-07-01        |
| James       | 1987-07-01        |
| Steven      | 1987-07-01        |
| Laura       | 1987-07-01        |
| Mozhe       | 1987-07-01        |
| James       | 1987-07-01        |
| TJ          | 1987-07-01        |
| Jason       | 1987-07-01        |
| Michael     | 1987-07-01        |
| Ki          | 1987-07-01        |
| Hazel       | 1987-07-01        |
| Renske      | 1987-07-01        |
| Stephen     | 1987-07-01        |
| John        | 1987-07-01        |
| Joshua      | 1987-07-01        |
| Trenna      | 1987-07-01        |
| Curtis      | 1987-07-01        |
| Randall     | 1987-07-01        |
| Peter       | 1987-07-01        |
| John        | 1987-08-01        |
| Karen       | 1987-08-01        |
| Alberto     | 1987-08-01        |
| Gerald      | 1987-08-01        |
| Eleni       | 1987-08-01        |
| Peter       | 1987-08-01        |
| David       | 1987-08-01        |
| Peter       | 1987-08-01        |
| Christopher | 1987-08-01        |
| Nanette     | 1987-08-01        |
| Oliver      | 1987-08-01        |
| Janette     | 1987-08-01        |
| Patrick     | 1987-08-01        |
| Allan       | 1987-08-01        |
| Lindsey     | 1987-08-01        |
| Louise      | 1987-08-01        |
| Sarath      | 1987-08-01        |
| Clara       | 1987-08-01        |
| Danielle    | 1987-08-01        |
| Mattea      | 1987-08-01        |
| David       | 1987-08-01        |
| Sundar      | 1987-08-01        |
| Amit        | 1987-08-01        |
| Lisa        | 1987-08-01        |
| Harrison    | 1987-08-01        |
| Tayler      | 1987-08-01        |
| William     | 1987-08-01        |
| Elizabeth   | 1987-08-01        |
| Sundita     | 1987-08-01        |
| Ellen       | 1987-08-01        |
| Alyssa      | 1987-08-01        |
| Jonathon    | 1987-09-01        |
| Jack        | 1987-09-01        |
| Kimberely   | 1987-09-01        |
| Charles     | 1987-09-01        |
| Winston     | 1987-09-01        |
| Jean        | 1987-09-01        |
| Martha      | 1987-09-01        |
| Girard      | 1987-09-01        |
| Nandita     | 1987-09-01        |
| Alexis      | 1987-09-01        |
| Julia       | 1987-09-01        |
| Anthony     | 1987-09-01        |
| Kelly       | 1987-09-01        |
| Jennifer    | 1987-09-01        |
| Timothy     | 1987-09-01        |
| Randall     | 1987-09-01        |
| Sarah       | 1987-09-01        |
| Britney     | 1987-09-01        |
| Samuel      | 1987-09-01        |
| Vance       | 1987-09-01        |
| Alana       | 1987-09-01        |
| Kevin       | 1987-09-01        |
| Donald      | 1987-09-01        |
| Douglas     | 1987-09-01        |
| Jennifer    | 1987-09-01        |
| Michael     | 1987-09-01        |
| Pat         | 1987-09-01        |
| Susan       | 1987-09-01        |
| Hermann     | 1987-09-01        |
| Shelley     | 1987-09-01        |
| William     | 1987-10-01        |
+-------------+-------------------+

-- 9. Display first name of employees who joined in 2001.

SELECT first_name from employees where year(hire_date)=2001;
Empty set (0.00 sec)



-- 10. Display employees who joined in the current year.

SELECT first_name from employees where year(hire_date)=now();
Empty set (0.00 sec)

-- 11. Display the number of days between system date and 1st January 2011.
SELECT datediff(now(), '2012-01-01') as day_diff;

+----------+
| day_diff |
+----------+
|     4870 |
+----------+


-- 12. Display number of employees joined after 15th of the month.
SELECT count(employee_id) FROM employees WHERE dayofmonth(hire_date) >15;

+--------------------+
| count(employee_id) |
+--------------------+
|                 61 |
+--------------------+


-- 13. Display third highest salary of employees.


SELECT FIRST_NAME FROM  employees ORDER BY salary asc LIMIT 2,1;
+------------+
| FIRST_NAME |
+------------+
| Steven     |
+------------+

-- 1. Display all the Suppliers, belonging to cities starting with the letter ‘L’.

SELECT sname from s where city like 'L%';

+-------+
| sname |
+-------+
| Smith |
| Clark |
+-------+
-- 2. Display all the Jobs, with the third letter in JNAME as ‘n’.
SELECT jname from j where SUBSTRING(jname,3,1)='n';

+---------+
| jname   |
+---------+
| Punch   |
| Console |
+---------+
-- 3. Display all the Supplier names with the initial letter capital.
select sname from s;
+-------+
| sname |
+-------+
| Smith |
| Jones |
| Blake |
| Clark |
| Adams |
+-------+

-- 4. Display all the Supplier names in upper case.
select upper(sname) as sname from s;
+-------+
| sname |
+-------+
| Smith |
| Jones |
| Blake |
| Clark |
| Adams |
+-------+

-- 5. Display all the Supplier names in lower case.

select lower(sname) as sname from s;
+-------+
| sname |
+-------+
| smith |
| jones |
| blake |
| clark |
| adams |
+-------+
-- 6. Display the Supplier names and the lengths of the names.
select sname,length(sname) as length from s;
+-------+--------+
| sname | length |
+-------+--------+
| Smith |      5 |
| Jones |      5 |
| Blake |      5 |
| Clark |      5 |
| Adams |      5 |
+-------+--------+
-- 7. Display the current day (e.g. Thursday).

select dayname(now());
+----------------+
| dayname(now()) |
+----------------+
| Wednesday      |
+----------------+
-- 8. Display the minimum Status in the Supplier table.

select dayname(now());
+----------------+
| dayname(now()) |
+----------------+
| Wednesday      |
+----------------+
-- 9. Display the maximum Weight in the Parts table.
select max(weight) from p;
+-------------+
| max(weight) |
+-------------+
|          19 |
+-------------+

-- 10. Display the average Weight of the Parts.
select max(weight) from p;
+-------------+
| max(weight) |
+-------------+
|          19 |
+-------------+

-- 11. Display the total Quantity sold for part ‘P1’.

select sum(qty) as total_quantity from sp where `P#` = 'P1';
+----------------+
| total_quantity |
+----------------+
|           1000 |
+----------------+
-- 12. Display all the Supplier names (with ‘la’ replaced by ‘ro’).
-- HINT: REPLACE.
select replace(sname,'la','ro') as sname from s;
+-------+
| sname |
+-------+
| Smith |
| Jones |
| Broke |
| Crork |
| Adams |