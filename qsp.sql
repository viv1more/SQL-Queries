SELECT DNAME 
FROM DEPT;

DNAME
--------------
ACCOUNTING
RESEARCH
SALES
OPERATIONS


SQL> SELECT DNAME, LOC FROM DEPT;

DNAME          LOC
-------------- -------------
ACCOUNTING     NEW YORK
RESEARCH       DALLAS
SALES          CHICAGO
OPERATIONS     BOSTON


SQL> SELECT DISTINCT DEPTNO
  2  FROM EMP;

    DEPTNO
----------
        30
        20
        10


SQL> SELECT DISTINCT SAL,DEPTNO 
  2  FROM EMP;

       SAL     DEPTNO
---------- ----------
      5000         10
      1300         10
      1600         30
      1250         30
      2450         10
      3000         20
       800         20
      2850         30
      1500         30
      1100         20
       950         30
      2975         20

12 rows selected.

SQL> SELECT ENAME,SAL FROM EMP;

ENAME             SAL
---------- ----------
SMITH             800
ALLEN            1600
WARD             1250
JONES            2975
MARTIN           1250
BLAKE            2850
CLARK            2450
SCOTT            3000
KING             5000
TURNER           1500
ADAMS            1100
JAMES             950
FORD             3000
MILLER           1300

14 rows selected.


EXPRESSION


SQL> SELECT ENAME , SAL*12 FROM EMP;

ENAME          SAL*12
---------- ----------
SMITH            9600
ALLEN           19200
WARD            15000
JONES           35700
MARTIN          15000
BLAKE           34200
CLARK           29400
SCOTT           36000
KING            60000
TURNER          18000
ADAMS           13200
JAMES           11400
FORD            36000
MILLER          15600

14 rows selected.


#WAQTD NAME OF EMPLOYEE, SALARY OF AEMPLOYEE ALONG WITH 10% HIKE IN A SALARY

SQL> SELECT ENAME, SAL+(SAL*0.1) FROM EMP;

ENAME      SAL+(SAL*0.1)
---------- -------------
SMITH                880
ALLEN               1760
WARD                1375
JONES             3272.5
MARTIN              1375
BLAKE               3135
CLARK               2695
SCOTT               3300
KING                5500
TURNER              1650
ADAMS               1210
JAMES               1045
FORD                3300
MILLER              1430

14 rows selected.


WQTD NAME OF EMPLOYEE ALONG WITH 40% DEDUCTION IN A SALARY

SQL> SELECT ENAME, SAL-SAL*0.4 FROM EMP;

ENAME      SAL-SAL*0.4
---------- -----------
SMITH              480
ALLEN              960
WARD               750
JONES             1785
MARTIN             750
BLAKE             1710
CLARK             1470
SCOTT             1800
KING              3000
TURNER             900
ADAMS              660
JAMES              570
FORD              1800
MILLER             780

14 rows selected.

# wqtd details of employee along with annual salary of a employee


#ALIAS>>>

SQL> SELECT EMP.*,SAL*12 FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO     SAL*12
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       9600
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30      15000
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20      35700
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30      15000
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30      34200
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10      29400
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20      36000
      7839 KING       PRESIDENT            17-NOV-81       5000                    10      60000
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30      18000
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20      13200
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30      11400
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20      36000
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600


SQL> SELECT EMP.*,SAL*12 AS ANNUALSAL FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  ANNUALSAL
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       9600
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30      15000
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20      35700
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30      15000
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30      34200
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10      29400
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20      36000
      7839 KING       PRESIDENT            17-NOV-81       5000                    10      60000
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30      18000
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20      13200
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30      11400
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20      36000
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600

14 rows selected.

SQL> SELECT EMP.*,SAL*12 ANNUALSALARY FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUALSALARY
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ------------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         9600
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        19200
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        15000
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        35700
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        15000
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        34200
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        29400
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        36000
      7839 KING       PRESIDENT            17-NOV-81       5000                    10        60000
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        18000
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        13200
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        11400
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        36000
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        15600

14 rows selected.

SQL> SELECT EMP.*,SALE*12 "ANNUAL SALARY OF EMPLOYEE" FROM EMP;
SELECT EMP.*,SALE*12 "ANNUAL SALARY OF EMPLOYEE" FROM EMP
             *
ERROR at line 1:
ORA-00904: "SALE": invalid identifier


SQL> SELECT EMP.*, SAL*12 "ANN SAL EMP" FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANN SAL EMP
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- -----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        9600
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       19200
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       15000
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       35700
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       15000
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       34200
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       29400
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       36000
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       60000
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       18000
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       13200
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       11400
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       36000
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       15600

14 rows selected.

SQL> 