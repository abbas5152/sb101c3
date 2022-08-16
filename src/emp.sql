mysql> use db;
Database changed
mysql> create table employe(id int,name varchar(20),Salary int,ManagerId int);
ERROR 1050 (42S01): Table 'employe' already exists
mysql> create table employeee(id int,name varchar(20),Salary int,ManagerId int);
Query OK, 0 rows affected (0.09 sec)

mysql> insert into employeee(1,"joe",70000,3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,"joe",70000,3)' at line 1
mysql> insert into employeee(1,"joe",70,3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,"joe",70,3)' at line 1
mysql> insert into employeee values(1,"joe",70,3);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employeee values(2,"henry",80,4);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employeee values(3,"sam",60,NULL);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employeee values(4,"max",90,NULL);
Query OK, 1 row affected (0.01 sec)

mysql> create table manager(id int,salary int);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into manager values(3,80);
Query OK, 1 row affected (0.01 sec)

mysql> insert into manager values(4,80);
Query OK, 1 row affected (0.02 sec)

mysql>  select name from employee Left JOIN manager ON employe.Salarymanager.Salary;
ERROR 1146 (42S02): Table 'db.employee' doesn't exist
mysql>  select name from employeee Left JOIN manager ON employeee.Salarymanager.Salary;
ERROR 1054 (42S22): Unknown column 'employeee.Salarymanager.Salary' in 'on clause'
mysql>  select name from employeee Left JOIN manager ON employeee.Salary>manager.Salary;
+-------+
| name  |
+-------+
| joe   |
| henry |
| sam   |
| max   |
| max   |
+-------+
5 rows in set (0.01 sec)

mysql>  select name from employeee right JOIN manager ON employeee.Salary>manager.Salary;
+------+
| name |
+------+
| max  |
| max  |
+------+
2 rows in set (0.00 sec)

mysql>  select name from employeee inner JOIN manager ON employeee.Salary>manager.Salary;
+------+
| name |
+------+
| max  |
| max  |
+------+
2 rows in set (0.01 sec)

mysql>  select name from employeee inner JOIN manager ON employeee.Salary>manager.Salary And employee.ManagerId=;manager.id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'manager.id' at line 1
mysql>  select name from employeee inner JOIN manager ON employeee.Salary>manager.Salary And employeee.ManagerId=;manager.id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'manager.id' at line 1
mysql>  select name from employeee inner JOIN manager ON employeee.ManagerId=;manager.id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'manager.id' at line 1
mysql>  select name from employeee inner JOIN manager ON employeee.ManagerId=manager.id;
+-------+
| name  |
+-------+
| joe   |
| henry |
+-------+
2 rows in set (0.01 sec)

mysql>  select name from employeee inner JOIN manager ON employeee.ManagerId=;manager.id And employeee.Salary>manager.Salary;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'manager.id And employeee.Salary>manager.Salary' at line 1
mysql>  select name from employeee inner JOIN manager ON employeee.ManagerId=;manager.id And employeee.Salary>manager.Salary;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'manager.id And employeee.Salary>manager.Salary' at line 1
mysql>  select name from employeee inner JOIN manager ON employeee.ManagerId=manager.id And employeee.Salary>manager.Salary;
Empty set (0.01 sec)

mysql>  select name from employeee inner JOIN manager ON employeee.ManagerId=manager.id And employeee.Salary>=manager.Salary;
+-------+
| name  |
+-------+
| henry |
+-------+
1 row in set (0.00 sec)

mysql> select *  from manager;select * from employee;
+------+--------+
| id   | salary |
+------+--------+
|    3 |     80 |
|    4 |     80 |
+------+--------+
2 rows in set (0.00 sec)

ERROR 1146 (42S02): Table 'db.employee' doesn't exist
mysql> select *  from manager;select * from employeee;
+------+--------+
| id   | salary |
+------+--------+
|    3 |     80 |
|    4 |     80 |
+------+--------+
2 rows in set (0.00 sec)

+------+-------+--------+-----------+
| id   | name  | Salary | ManagerId |
+------+-------+--------+-----------+
|    1 | joe   |     70 |         3 |
|    2 | henry |     80 |         4 |
|    3 | sam   |     60 |      NULL |
|    4 | max   |     90 |      NULL |
+------+-------+--------+-----------+
4 rows in set (0.00 sec)

mysql>  select name from employeee inner JOIN manager ON employeee.ManagerId=manager.id And employeee.Salary>manager.Salary;
Empty set (0.00 sec)

mysql>  select name from employeee left JOIN manager ON employeee.ManagerId=manager.id And employeee.Salary>manager.Salary;
+-------+
| name  |
+-------+
| joe   |
| henry |
| sam   |
| max   |
+-------+
4 rows in set (0.00 sec)

mysql>  select name from employeee right JOIN manager ON employeee.ManagerId=manager.id And employeee.Salary>manager.Salary;
+------+
| name |
+------+
| NULL |
| NULL |
+------+
2 rows in set (0.00 sec)

mysql>  select name from employeee right JOIN manager ON employeee.ManagerId=manager.id or employeee.Salary>manager.Salary;
+-------+
| name  |
+-------+
| max   |
| joe   |
| max   |
| henry |
+-------+
4 rows in set (0.00 sec)

mysql>  select name from employeee right JOIN manager ON employeee.ManagerId==manager.id or employeee.Salary>=manager.Salary;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '==manager.id or employeee.Salary>=manager.Salary' at line 1
mysql>  select name from employeee right JOIN manager ON employeee.ManagerId=manager.id or employeee.Salary>=manager.Salary;
+-------+
| name  |
+-------+
| max   |
| henry |
| joe   |
| max   |
| henry |
+-------+
5 rows in set (0.00 sec)

mysql>  select name from employeee right JOIN manager ON employeee.ManagerId=manager.id and employeee.Salary>=manager.Salary;
+-------+
| name  |
+-------+
| NULL  |
| henry |
+-------+
2 rows in set (0.00 sec)

mysql>  select name from employeee left JOIN manager ON employeee.ManagerId=manager.id and employeee.Salary>=manager.Salary;
+-------+
| name  |
+-------+
| joe   |
| henry |
| sam   |
| max   |
+-------+
4 rows in set (0.00 sec)

mysql>  select name from employeee inner JOIN manager ON employeee.ManagerId=manager.id and employeee.Salary>=manager.Salary;
+-------+
| name  |
+-------+
| henry |
+-------+
1 row in set (0.00 sec)