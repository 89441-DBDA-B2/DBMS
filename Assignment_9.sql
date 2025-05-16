

select * from orders where odate =  '1990-10-03';
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
+------+---------+------------+------+------+
5 rows in set (0.00 sec)

explain format=json select * from orders where odate =  '1990-10-03';

before indexing query cost=1.25
after indexing query cost=1.00


2)
CREATE UNIQUE INDEX idx_onum ON orders(onum);
explain format=json select onum from orders;


3)
CREATE INDEX idx_snum ON salespeople(snum);
explain format = json select * from orders o inner join salespeople s on s.snum=o.snum;

4)
CREATE INDEX idx_salespeson_c ON orders(snum,rating);

5)
 CREATE INDEX idx_orders_c ON orders(odate,onum);
