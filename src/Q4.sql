mysql> create table emp(id int,name varchar(20),Department varchar(20),number varchar(20),email varchar(20),headid int);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into emp values(101,Isha,E-101,9876545678,isha@gmail.com,105);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '@gmail.com,105)' at line 1
mysql> insert into emp values(101,"Isha","E-101","9876545678","isha@gmail.com",105);
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp values(102,"Isha","E-101","9876545678","isha@gmail.com",105);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp values(104,"rahul","E-102","9876545678","isha@gmail.com",105);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp values(105,"abhishek","E-101","9876545678","isha@gmail.com",102);
Query OK, 1 row affected (0.01 sec)

mysql> create table empdep(depid int,depname varchar(20),depoff varchar(20),Dephead int);
Query OK, 0 rows affected (0.05 sec)

mysql> create table empdepp(depid String,depname varchar(20),depoff varchar(20),Dephead int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'String,depname varchar(20),depoff varchar(20),Dephead int)' at line 1
mysql> create table empdepp(depid String,depname varchar(20),depoff varchar(20),Dephead int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'String,depname varchar(20),depoff varchar(20),Dephead int)' at line 1
mysql> create table empdepp(depid varchar(22),depname varchar(20),depoff varchar(20),Dephead int);
Query OK, 0 rows affected (0.15 sec)

mysql> insert into empdepp values("E-101","HR","Monday",105);
Query OK, 1 row affected (0.19 sec)

mysql>  select name from emp Left JOIN empdepp ON depname="HR";
+----------+
| name     |
+----------+
| Isha     |
| Isha     |
| rahul    |
| abhishek |
+----------+
4 rows in set (0.01 sec)

mysql>  select name from emp Right JOIN empdepp ON depname="HR";
+----------+
| name     |
+----------+
| abhishek |
| rahul    |
| Isha     |
| Isha     |
+----------+
4 rows in set (0.00 sec)

mysql>  select name from emp Right JOIN empdepp ON depname="HR" and headid=dephead;
+-------+
| name  |
+-------+
| rahul |
| Isha  |
| Isha  |
+-------+
3 rows in set (0.00 sec)

mysql>  select name from emp left JOIN empdepp ON depname="HR" and headid=dephead;
+----------+
| name     |
+----------+
| Isha     |
| Isha     |
| rahul    |
| abhishek |
+----------+
4 rows in set (0.00 sec)

mysql>  select name from emp left JOIN empdepp ON depname="HR" and id=dephead;
+----------+
| name     |
+----------+
| Isha     |
| Isha     |
| rahul    |
| abhishek |
+----------+
4 rows in set (0.00 sec)

mysql>  select name from emp left JOIN empdepp ON  id=dephead;
+----------+
| name     |
+----------+
| Isha     |
| Isha     |
| rahul    |
| abhishek |
+----------+
4 rows in set (0.00 sec)

mysql>  select * from emp left JOIN empdepp ON  id=dephead;
+------+----------+------------+------------+----------------+--------+-------+---------+--------+---------+
| id   | name     | Department | number     | email          | headid | depid | depname | depoff | Dephead |
+------+----------+------------+------------+----------------+--------+-------+---------+--------+---------+
|  101 | Isha     | E-101      | 9876545678 | isha@gmail.com |    105 | NULL  | NULL    | NULL   |    NULL |
|  102 | Isha     | E-101      | 9876545678 | isha@gmail.com |    105 | NULL  | NULL    | NULL   |    NULL |
|  104 | rahul    | E-102      | 9876545678 | isha@gmail.com |    105 | NULL  | NULL    | NULL   |    NULL |
|  105 | abhishek | E-101      | 9876545678 | isha@gmail.com |    102 | E-101 | HR      | Monday |     105 |
+------+----------+------------+------------+----------------+--------+-------+---------+--------+---------+
4 rows in set (0.00 sec)

mysql>  select * from emp left JOIN empdepp ON  id=dephead;
+------+----------+------------+------------+----------------+--------+-------+---------+--------+---------+
| id   | name     | Department | number     | email          | headid | depid | depname | depoff | Dephead |
+------+----------+------------+------------+----------------+--------+-------+---------+--------+---------+
|  101 | Isha     | E-101      | 9876545678 | isha@gmail.com |    105 | NULL  | NULL    | NULL   |    NULL |
|  102 | Isha     | E-101      | 9876545678 | isha@gmail.com |    105 | NULL  | NULL    | NULL   |    NULL |
|  104 | rahul    | E-102      | 9876545678 | isha@gmail.com |    105 | NULL  | NULL    | NULL   |    NULL |
|  105 | abhishek | E-101      | 9876545678 | isha@gmail.com |    102 | E-101 | HR      | Monday |     105 |
+------+----------+------------+------------+----------------+--------+-------+---------+--------+---------+
4 rows in set (0.00 sec)

mysql>  select * from emp right JOIN empdepp ON  id=dephead;
+------+----------+------------+------------+----------------+--------+-------+---------+--------+---------+
| id   | name     | Department | number     | email          | headid | depid | depname | depoff | Dephead |
+------+----------+------------+------------+----------------+--------+-------+---------+--------+---------+
|  105 | abhishek | E-101      | 9876545678 | isha@gmail.com |    102 | E-101 | HR      | Monday |     105 |
+------+----------+------------+------------+----------------+--------+-------+---------+--------+---------+
1 row in set (0.00 sec)

mysql>  select name from emp right JOIN empdepp ON  id=dephead;
+----------+
| name     |
+----------+
| abhishek |
+----------+
1 row in set (0.00 sec)