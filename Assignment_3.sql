-- 1. Write a query to get unique department ID from employee 
-- table.

mysql> SELECT DISTINCT DEPARTMENT_ID from employees;
+---------------+
| DEPARTMENT_ID |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+

-- 2. Write a query to get all employee details from the employee 
-- table order by first name, descending.

mysql> SELECT * FROM employees ORDER BY FIRST_NAME desc;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
107 rows in set (0.00 sec)


-- 3. Write a query to get the employee ID, names (first_name, 
-- last_name), salary in ascending order of salary.

mysql> SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY FROM employees ORD
ER BY SALARY asc;
+-------------+-------------+-------------+----------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | SALARY   |
+-------------+-------------+-------------+----------+
|         132 | TJ          | Olson       |  2100.00 |
|         128 | Steven      | Markle      |  2200.00 |
|         136 | Hazel       | Philtanker  |  2200.00 |
|         127 | James       | Landry      |  2400.00 |
|         135 | Ki          | Gee         |  2400.00 |
|         119 | Karen       | Colmenares  |  2500.00 |
|         131 | James       | Marlow      |  2500.00 |
|         140 | Joshua      | Patel       |  2500.00 |
|         144 | Peter       | Vargas      |  2500.00 |
|         182 | Martha      | Sullivan    |  2500.00 |
|         191 | Randall     | Perkins     |  2500.00 |
|         118 | Guy         | Himuro      |  2600.00 |
|         143 | Randall     | Matos       |  2600.00 |
|         198 | Donald      | OConnell    |  2600.00 |
|         199 | Douglas     | Grant       |  2600.00 |
|         126 | Irene       | Mikkilineni |  2700.00 |
|         139 | John        | Seo         |  2700.00 |
|         117 | Sigal       | Tobias      |  2800.00 |
|         130 | Mozhe       | Atkinson    |  2800.00 |
|         183 | Girard      | Geoni       |  2800.00 |
|         195 | Vance       | Jones       |  2800.00 |
|         116 | Shelli      | Baida       |  2900.00 |
|         134 | Michael     | Rogers      |  2900.00 |
|         190 | Timothy     | Gates       |  2900.00 |
|         187 | Anthony     | Cabrio      |  3000.00 |
|         197 | Kevin       | Feeney      |  3000.00 |
|         115 | Alexander   | Khoo        |  3100.00 |
|         142 | Curtis      | Davies      |  3100.00 |
|         181 | Jean        | Fleaur      |  3100.00 |
|         196 | Alana       | Walsh       |  3100.00 |
|         125 | Julia       | Nayer       |  3200.00 |
|         138 | Stephen     | Stiles      |  3200.00 |
|         180 | Winston     | Taylor      |  3200.00 |
|         194 | Samuel      | McCain      |  3200.00 |
|         129 | Laura       | Bissot      |  3300.00 |
|         133 | Jason       | Mallin      |  3300.00 |
|         186 | Julia       | Dellinger   |  3400.00 |
|         141 | Trenna      | Rajs        |  3500.00 |
|         137 | Renske      | Ladwig      |  3600.00 |
|         189 | Jennifer    | Dilly       |  3600.00 |
|         188 | Kelly       | Chung       |  3800.00 |
|         193 | Britney     | Everett     |  3900.00 |
|         192 | Sarah       | Bell        |  4000.00 |
|         185 | Alexis      | Bull        |  4100.00 |
|         107 | Diana       | Lorentz     |  4200.00 |
|         184 | Nandita     | Sarchand    |  4200.00 |
|         200 | Jennifer    | Whalen      |  4400.00 |
|         105 | David       | Austin      |  4800.00 |
|         106 | Valli       | Pataballa   |  4800.00 |
|         124 | Kevin       | Mourgos     |  5800.00 |
|         104 | Bruce       | Ernst       |  6000.00 |
|         202 | Pat         | Fay         |  6000.00 |
|         173 | Sundita     | Kumar       |  6100.00 |
|         167 | Amit        | Banda       |  6200.00 |
|         179 | Charles     | Johnson     |  6200.00 |
|         166 | Sundar      | Ande        |  6400.00 |
|         123 | Shanta      | Vollman     |  6500.00 |
|         203 | Susan       | Mavris      |  6500.00 |
|         165 | David       | Lee         |  6800.00 |
|         113 | Luis        | Popp        |  6900.00 |
|         155 | Oliver      | Tuvault     |  7000.00 |
|         161 | Sarath      | Sewall      |  7000.00 |
|         178 | Kimberely   | Grant       |  7000.00 |
|         164 | Mattea      | Marvins     |  7200.00 |
|         172 | Elizabeth   | Bates       |  7300.00 |
|         171 | William     | Smith       |  7400.00 |
|         154 | Nanette     | Cambrault   |  7500.00 |
|         160 | Louise      | Doran       |  7500.00 |
|         111 | Ismael      | Sciarra     |  7700.00 |
|         112 | Jose Manuel | Urman       |  7800.00 |
|         122 | Payam       | Kaufling    |  7900.00 |
|         120 | Matthew     | Weiss       |  8000.00 |
|         153 | Christopher | Olsen       |  8000.00 |
|         159 | Lindsey     | Smith       |  8000.00 |
|         110 | John        | Chen        |  8200.00 |
|         121 | Adam        | Fripp       |  8200.00 |
|         206 | William     | Gietz       |  8300.00 |
|         177 | Jack        | Livingston  |  8400.00 |
|         176 | Jonathon    | Taylor      |  8600.00 |
|         175 | Alyssa      | Hutton      |  8800.00 |
|         103 | Alexander   | Hunold      |  9000.00 |
|         109 | Daniel      | Faviet      |  9000.00 |
|         152 | Peter       | Hall        |  9000.00 |
|         158 | Allan       | McEwen      |  9000.00 |
|         151 | David       | Bernstein   |  9500.00 |
|         157 | Patrick     | Sully       |  9500.00 |
|         163 | Danielle    | Greene      |  9500.00 |
|         170 | Tayler      | Fox         |  9600.00 |
|         150 | Peter       | Tucker      | 10000.00 |
|         156 | Janette     | King        | 10000.00 |
|         169 | Harrison    | Bloom       | 10000.00 |
|         204 | Hermann     | Baer        | 10000.00 |
|         149 | Eleni       | Zlotkey     | 10500.00 |
|         162 | Clara       | Vishney     | 10500.00 |
|         114 | Den         | Raphaely    | 11000.00 |
|         148 | Gerald      | Cambrault   | 11000.00 |
|         174 | Ellen       | Abel        | 11000.00 |
|         168 | Lisa        | Ozer        | 11500.00 |
|         108 | Nancy       | Greenberg   | 12000.00 |
|         147 | Alberto     | Errazuriz   | 12000.00 |
|         205 | Shelley     | Higgins     | 12000.00 |
|         201 | Michael     | Hartstein   | 13000.00 |
|         146 | Karen       | Partners    | 13500.00 |
|         145 | John        | Russell     | 14000.00 |
|         101 | Neena       | Kochhar     | 17000.00 |
|         102 | Lex         | De Haan     | 17000.00 |
|         100 | Steven      | King        | 24000.00 |
+-------------+-------------+-------------+----------+



-- 4. Display first name and join date of the employees who is 
-- either IT Programmer or Sales Man.

mysql> SELECT FIRST_NAME, HIRE_DATE FROM employees WHERE JOB_ID = 'IT_PROG' OR 'SA_MAN';
+------------+------------+
| FIRST_NAME | HIRE_DATE  |
+------------+------------+
| Alexander  | 1987-06-20 |
| Bruce      | 1987-06-21 |
| David      | 1987-06-22 |
| Valli      | 1987-06-23 |
| Diana      | 1987-06-24 |
+------------+------------+


-- 5. Display details of employee with ID 150 or 160.

mysql> SELECT * FROM employees WHERE EMPLOYEE_ID = 150 or EMPLOYEE_ID = 160;
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL   | PHONE_NUMBER       | HIRE_DATE  | JOB_ID | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
|         150 | Peter      | Tucker    | PTUCKER | 011.44.1344.129268 | 1987-08-06 | SA_REP | 10000.00 |           0.30 |        145 |            80 |
|         160 | Louise     | Doran     | LDORAN  | 011.44.1345.629268 | 1987-08-16 | SA_REP |  7500.00 |           0.30 |        146 |            80 |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
2 rows in set (0.01 sec)

-- 6. Display first name, salary, commission pct, and hire date for
-- employees with salary less than 10000.


mysql> SELECT * FROM employees WHERE EMPLOYEE_ID = 150 and EMPLOYEE_ID = 160;
Empty set (0.00 sec)

mysql> SELECT * FROM employees WHERE EMPLOYEE_ID = 150 AND EMPLOYEE_ID = 160;
Empty set (0.00 sec)

mysql> SELECT * FROM employees WHERE EMPLOYEE_ID = 150 or EMPLOYEE_ID = 160;
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL   | PHONE_NUMBER       | HIRE_DATE  | JOB_ID | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
|         150 | Peter      | Tucker    | PTUCKER | 011.44.1344.129268 | 1987-08-06 | SA_REP | 10000.00 |           0.30 |        145 |            80 |
|         160 | Louise     | Doran     | LDORAN  | 011.44.1345.629268 | 1987-08-16 | SA_REP |  7500.00 |           0.30 |        146 |            80 |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
2 rows in set (0.01 sec)

mysql> SELECT FIRST_NAME, SALARY,COMMISSION_PCT,HIRE_DATE FROM SALARY < 10000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '< 10000' at line 1
mysql> SELECT FIRST_NAME, SALARY,COMMISSION_PCT,HIRE_DATE FROM employees SALARY < 10000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '< 10000' at line 1
mysql> SELECT FIRST_NAME, SALARY,COMMISSION_PCT,HIRE_DATE FROM employees WHERE SALARY < 10000;
+-------------+---------+----------------+------------+
| FIRST_NAME  | SALARY  | COMMISSION_PCT | HIRE_DATE  |
+-------------+---------+----------------+------------+
| Alexander   | 9000.00 |           0.00 | 1987-06-20 |
| Bruce       | 6000.00 |           0.00 | 1987-06-21 |
| David       | 4800.00 |           0.00 | 1987-06-22 |
| Valli       | 4800.00 |           0.00 | 1987-06-23 |
| Diana       | 4200.00 |           0.00 | 1987-06-24 |
| Daniel      | 9000.00 |           0.00 | 1987-06-26 |
| John        | 8200.00 |           0.00 | 1987-06-27 |
| Ismael      | 7700.00 |           0.00 | 1987-06-28 |
| Jose Manuel | 7800.00 |           0.00 | 1987-06-29 |
| Luis        | 6900.00 |           0.00 | 1987-06-30 |
| Alexander   | 3100.00 |           0.00 | 1987-07-02 |
| Shelli      | 2900.00 |           0.00 | 1987-07-03 |
| Sigal       | 2800.00 |           0.00 | 1987-07-04 |
| Guy         | 2600.00 |           0.00 | 1987-07-05 |
| Karen       | 2500.00 |           0.00 | 1987-07-06 |
| Matthew     | 8000.00 |           0.00 | 1987-07-07 |
| Adam        | 8200.00 |           0.00 | 1987-07-08 |
| Payam       | 7900.00 |           0.00 | 1987-07-09 |
| Shanta      | 6500.00 |           0.00 | 1987-07-10 |
| Kevin       | 5800.00 |           0.00 | 1987-07-11 |
| Julia       | 3200.00 |           0.00 | 1987-07-12 |
| Irene       | 2700.00 |           0.00 | 1987-07-13 |
| James       | 2400.00 |           0.00 | 1987-07-14 |
| Steven      | 2200.00 |           0.00 | 1987-07-15 |
| Laura       | 3300.00 |           0.00 | 1987-07-16 |
| Mozhe       | 2800.00 |           0.00 | 1987-07-17 |
| James       | 2500.00 |           0.00 | 1987-07-18 |
| TJ          | 2100.00 |           0.00 | 1987-07-19 |
| Jason       | 3300.00 |           0.00 | 1987-07-20 |
| Michael     | 2900.00 |           0.00 | 1987-07-21 |
| Ki          | 2400.00 |           0.00 | 1987-07-22 |
| Hazel       | 2200.00 |           0.00 | 1987-07-23 |
| Renske      | 3600.00 |           0.00 | 1987-07-24 |
| Stephen     | 3200.00 |           0.00 | 1987-07-25 |
| John        | 2700.00 |           0.00 | 1987-07-26 |
| Joshua      | 2500.00 |           0.00 | 1987-07-27 |
| Trenna      | 3500.00 |           0.00 | 1987-07-28 |
| Curtis      | 3100.00 |           0.00 | 1987-07-29 |
| Randall     | 2600.00 |           0.00 | 1987-07-30 |
| Peter       | 2500.00 |           0.00 | 1987-07-31 |
| David       | 9500.00 |           0.25 | 1987-08-07 |
| Peter       | 9000.00 |           0.25 | 1987-08-08 |
| Christopher | 8000.00 |           0.20 | 1987-08-09 |
| Nanette     | 7500.00 |           0.20 | 1987-08-10 |
| Oliver      | 7000.00 |           0.15 | 1987-08-11 |
| Patrick     | 9500.00 |           0.35 | 1987-08-13 |
| Allan       | 9000.00 |           0.35 | 1987-08-14 |
| Lindsey     | 8000.00 |           0.30 | 1987-08-15 |
| Louise      | 7500.00 |           0.30 | 1987-08-16 |
| Sarath      | 7000.00 |           0.25 | 1987-08-17 |
| Danielle    | 9500.00 |           0.15 | 1987-08-19 |
| Mattea      | 7200.00 |           0.10 | 1987-08-20 |
| David       | 6800.00 |           0.10 | 1987-08-21 |
| Sundar      | 6400.00 |           0.10 | 1987-08-22 |
| Amit        | 6200.00 |           0.10 | 1987-08-23 |
| Tayler      | 9600.00 |           0.20 | 1987-08-26 |
| William     | 7400.00 |           0.15 | 1987-08-27 |
| Elizabeth   | 7300.00 |           0.15 | 1987-08-28 |
| Sundita     | 6100.00 |           0.10 | 1987-08-29 |
| Alyssa      | 8800.00 |           0.25 | 1987-08-31 |
| Jonathon    | 8600.00 |           0.20 | 1987-09-01 |
| Jack        | 8400.00 |           0.20 | 1987-09-02 |
| Kimberely   | 7000.00 |           0.15 | 1987-09-03 |
| Charles     | 6200.00 |           0.10 | 1987-09-04 |
| Winston     | 3200.00 |           0.00 | 1987-09-05 |
| Jean        | 3100.00 |           0.00 | 1987-09-06 |
| Martha      | 2500.00 |           0.00 | 1987-09-07 |
| Girard      | 2800.00 |           0.00 | 1987-09-08 |
| Nandita     | 4200.00 |           0.00 | 1987-09-09 |
| Alexis      | 4100.00 |           0.00 | 1987-09-10 |
| Julia       | 3400.00 |           0.00 | 1987-09-11 |
| Anthony     | 3000.00 |           0.00 | 1987-09-12 |
| Kelly       | 3800.00 |           0.00 | 1987-09-13 |
| Jennifer    | 3600.00 |           0.00 | 1987-09-14 |
| Timothy     | 2900.00 |           0.00 | 1987-09-15 |
| Randall     | 2500.00 |           0.00 | 1987-09-16 |
| Sarah       | 4000.00 |           0.00 | 1987-09-17 |
| Britney     | 3900.00 |           0.00 | 1987-09-18 |
| Samuel      | 3200.00 |           0.00 | 1987-09-19 |
| Vance       | 2800.00 |           0.00 | 1987-09-20 |
| Alana       | 3100.00 |           0.00 | 1987-09-21 |
| Kevin       | 3000.00 |           0.00 | 1987-09-22 |
| Donald      | 2600.00 |           0.00 | 1987-09-23 |
| Douglas     | 2600.00 |           0.00 | 1987-09-24 |
| Jennifer    | 4400.00 |           0.00 | 1987-09-25 |
| Pat         | 6000.00 |           0.00 | 1987-09-27 |
| Susan       | 6500.00 |           0.00 | 1987-09-28 |
| William     | 8300.00 |           0.00 | 1987-10-01 |
+-------------+---------+----------------+------------+

-- 7. Display employees where the first name or last name starts 
-- with S.
ysql> SELECT * FROM employees WHERE FIRST_NAME LIKE 'S%' or LAST_NAME LIKE  '%S';
+-------------+------------+------------+----------+--------------------+------------+----------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME  | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID   | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+------------+----------+--------------------+------------+----------+----------+----------------+------------+---------------+
|         100 | Steven     | King       | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES  | 24000.00 |           0.00 |          0 |            90 |
|         116 | Shelli     | Baida      | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK |  2900.00 |           0.00 |        114 |            30 |
|         117 | Sigal      | Tobias     | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK |  2800.00 |           0.00 |        114 |            30 |
|         119 | Karen      | Colmenares | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK |  2500.00 |           0.00 |        114 |            30 |
|         120 | Matthew    | Weiss      | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN   |  8000.00 |           0.00 |        100 |            50 |
|         123 | Shanta     | Vollman    | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN   |  6500.00 |           0.00 |        100 |            50 |
|         124 | Kevin      | Mourgos    | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN   |  5800.00 |           0.00 |        100 |            50 |
|         128 | Steven     | Markle     | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK |  2200.00 |           0.00 |        120 |            50 |
|         134 | Michael    | Rogers     | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK |  2900.00 |           0.00 |        122 |            50 |
|         138 | Stephen    | Stiles     | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK |  3200.00 |           0.00 |        123 |            50 |
|         141 | Trenna     | Rajs       | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK |  3500.00 |           0.00 |        124 |            50 |
|         142 | Curtis     | Davies     | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK |  3100.00 |           0.00 |        124 |            50 |
|         143 | Randall    | Matos      | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK |  2600.00 |           0.00 |        124 |            50 |
|         144 | Peter      | Vargas     | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK |  2500.00 |           0.00 |        124 |            50 |
|         146 | Karen      | Partners   | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN   | 13500.00 |           0.30 |        100 |            80 |
|         161 | Sarath     | Sewall     | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP   |  7000.00 |           0.25 |        146 |            80 |
|         164 | Mattea     | Marvins    | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP   |  7200.00 |           0.10 |        147 |            80 |
|         166 | Sundar     | Ande       | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP   |  6400.00 |           0.10 |        147 |            80 |
|         172 | Elizabeth  | Bates      | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP   |  7300.00 |           0.15 |        148 |            80 |
|         173 | Sundita    | Kumar      | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP   |  6100.00 |           0.10 |        148 |            80 |
|         190 | Timothy    | Gates      | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK |  2900.00 |           0.00 |        122 |            50 |
|         191 | Randall    | Perkins    | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK |  2500.00 |           0.00 |        122 |            50 |
|         192 | Sarah      | Bell       | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK |  4000.00 |           0.00 |        123 |            50 |
|         194 | Samuel     | McCain     | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK |  3200.00 |           0.00 |        123 |            50 |
|         195 | Vance      | Jones      | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK |  2800.00 |           0.00 |        123 |            50 |
|         203 | Susan      | Mavris     | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP   |  6500.00 |           0.00 |        101 |            40 |
|         205 | Shelley    | Higgins    | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR   | 12000.00 |           0.00 |        101 |           110 |
+-------------+------------+------------+----------+--------------------+------------+----------+----------+----------------+------------+---------------+
27 rows in set (0.01 sec)


-- 8. Display details of jobs in the descending order of the title.

sql> SELECT JOB_ID from employees ORDER BY JOB_ID desc;
+------------+
| JOB_ID     |
+------------+
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SH_CLERK   |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_REP     |
| SA_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_MAN     |
| SA_MAN     |
| PU_MAN     |
| PU_CLERK   |
| PU_CLERK   |
| PU_CLERK   |
| PU_CLERK   |
| PU_CLERK   |
| PR_REP     |
| MK_REP     |
| MK_MAN     |
| IT_PROG    |
| IT_PROG    |
| IT_PROG    |
| IT_PROG    |
| IT_PROG    |
| HR_REP     |
| FI_MGR     |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_ACCOUNT |
| FI_ACCOUNT |
| AD_VP      |
| AD_VP      |
| AD_PRES    |
| AD_ASST    |
| AC_MGR     |
| AC_ACCOUNT |
+------------+

-- 9. Display details of the employees where commission percentage 
-- is null and salary in the range 5000 to 10000 and department is 
-- 30.

mysql> SELECT * FROM employees WHERE COMMISSION_PCT IS NULL AND SALARY BETWEEN 5000 AND 10000 AND DEPARTMENT_ID =
 30;
Empty set (0.00 sec)

-- 10. Display employees first_name,email who are working in 
-- “Executive” department.

mysql> SELECT * FROM employees WHERE COMMISSION_PCT IS NULL AND SALARY BETWEEN 5000 AND 10000 AND DEPARTMENT_ID =
 30;
Empty set (0.00 sec)

-- 11. Display unique contry_id from locations table.
mysql> SELECT * FROM  locations;
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
| LOCATION_ID | STREET_ADDRESS            | POSTAL_CODE  | CITY                | STATE_PROVINCE    | COUNTRY_ID |
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
|        1000 | 1297 Via Cola di Rie      | 989          | Roma                |                   | IT         |
|        1100 | 93091 Calle della Testa   | 10934        | Venice              |                   | IT         |
|        1200 | 2017 Shinjuku-ku          | 1689         | Tokyo               | Tokyo Prefecture  | JP         |
|        1300 | 9450 Kamiya-cho           | 6823         | Hiroshima           |                   | JP         |
|        1400 | 2014 Jabberwocky Rd       | 26192        | Southlake           | Texas             | US         |
|        1500 | 2011 Interiors Blvd       | 99236        | South San Francisco | California        | US         |
|        1600 | 2007 Zagora St            | 50090        | South Brunswick     | New Jersey        | US         |
|        1700 | 2004 Charade Rd           | 98199        | Seattle             | Washington        | US         |
|        1800 | 147 Spadina Ave           | M5V 2L7      | Toronto             | Ontario           | CA         |
|        1900 | 6092 Boxwood St           | YSW 9T2      | Whitehorse          | Yukon             | CA         |
|        2000 | 40-5-12 Laogianggen       | 190518       | Beijing             |                   | CN         |
|        2100 | 1298 Vileparle (E)        | 490231       | Bombay              | Maharashtra       | IN         |
|        2200 | 12-98 Victoria Street     | 2901         | Sydney              | New South Wales   | AU         |
|        2300 | 198 Clementi North        | 540198       | Singapore           |                   | SG         |
|        2400 | 8204 Arthur St            |              | London              |                   | UK         |
|        2500 | Magdalen Centre          |  The Oxford  | OX9 9ZB             | Oxford            | Ox         |
|        2600 | 9702 Chester Road         | 9629850293   | Stretford           | Manchester        | UK         |
|        2700 | Schwanthalerstr. 7031     | 80925        | Munich              | Bavaria           | DE         |
|        2800 | Rua Frei Caneca 1360      | 01307-002    | Sao Paulo           | Sao Paulo         | BR         |
|        2900 | 20 Rue des Corps-Saints   | 1730         | Geneva              | Geneve            | CH         |
|        3000 | Murtenstrasse 921         | 3095         | Bern                | BE                | CH         |
|        3100 | Pieter Breughelstraat 837 | 3029SK       | Utrecht             | Utrecht           | NL         |
|        3200 | Mariano Escobedo 9991     | 11932        | Mexico City         | "Distrito Federal"|         |
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
23 rows in set (0.00 sec)


-- 12. Display all employees whose have job_id IT_PROG and 
-- FI_ACCOUNT.

mysql> Select * from employees  WHERE JOB_ID = "IT_PROG" OR JOB_ID= "FI_ACCOUNT";
+-------------+-------------+-----------+----------+--------------+------------+------------+---------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY  | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-----------+----------+--------------+------------+------------+---------+----------------+------------+---------------+
|         109 | Daniel      | Faviet    | DFAVIET  | 515.124.4169 | 1987-06-26 | FI_ACCOUNT | 9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen      | JCHEN    | 515.124.4269 | 1987-06-27 | FI_ACCOUNT | 8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra   | ISCIARRA | 515.124.4369 | 1987-06-28 | FI_ACCOUNT | 7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman     | JMURMAN  | 515.124.4469 | 1987-06-29 | FI_ACCOUNT | 7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp      | LPOPP    | 515.124.4567 | 1987-06-30 | FI_ACCOUNT | 6900.00 |           0.00 |        108 |           100 |
|         103 | Alexander   | Hunold    | AHUNOLD  | 590.423.4567 | 1987-06-20 | IT_PROG    | 9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst     | BERNST   | 590.423.4568 | 1987-06-21 | IT_PROG    | 6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin    | DAUSTIN  | 590.423.4569 | 1987-06-22 | IT_PROG    | 4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa | VPATABAL | 590.423.4560 | 1987-06-23 | IT_PROG    | 4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz   | DLORENTZ | 590.423.5567 | 1987-06-24 | IT_PROG    | 4200.00 |           0.00 |        103 |            60 |
+-------------+-------------+-----------+----------+--------------+------------+------------+---------+----------------+------------+---------------+
10 rows in set (0.00 sec)

-- 13. Display all countries in ascending order.

mysql> select COUNTRY_NAME from countries  ORDER BY COUNTRY_NAME asc;
+--------------------------+
| COUNTRY_NAME             |
+--------------------------+
| Argentina                |
| Australia                |
| Belgium                  |
| Brazil                   |
| Canada                   |
| China                    |
| Denmark                  |
| Egypt                    |
| France                   |
| Germany                  |
| HongKong                 |
| India                    |
| Israel                   |
| Italy                    |
| Japan                    |
| Kuwait                   |
| Mexico                   |
| Netherlands              |
| Nigeria                  |
| Singapore                |
| Switzerland              |
| United Kingdom           |
| United States of America |
| Zambia                   |
| Zimbabwe                 |
+--------------------------+
25 rows in set (0.00 sec)