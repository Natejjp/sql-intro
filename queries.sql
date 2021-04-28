createdb CompanyDatabase2

pgcli CompanyDatabase2

CompanyDatabase2> CREATE TABLE "Employees" (
................. "FullName" TEXT NOT NULL,
................. "Salary"   INT,
................. "JobPosition" TEXT,
................. "PhoneExtension" INT,
................. "IsPartTime" BOOLEAN
................. );

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lazy Larry', 100, 'cashier', 1, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Bob', 200, 'boss', 2, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Jim', 300, 'cook', 3, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Nate', 400, 'teacher', 4, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Mary', 500, 'coach', 5, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Adam', 600, 'driver', 6, 'false');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Berry', 700, 'manager', 7, 'false');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Carrie', 800, 'bartender', 8, 'false');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Dennis', 900, 'host', 9, 'false');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Emanuel', 1000, 'owner', 10, 'false');

CompanyDatabase2> SELECT * FROM "Employees";
+------------+----------+---------------+------------------+--------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   |
|------------+----------+---------------+------------------+--------------|
| Lazy Larry | 100      | cashier       | 1                | True         |
| Bob        | 200      | boss          | 2                | True         |
| Jim        | 300      | cook          | 3                | True         |
| Nate       | 400      | teacher       | 4                | True         |
| Mary       | 500      | coach         | 5                | True         |
| Adam       | 600      | driver        | 6                | False        |
| Berry      | 700      | manager       | 7                | False        |
| Carrie     | 800      | bartender     | 8                | False        |
| Dennis     | 900      | host          | 9                | False        |
| Emanuel    | 1000     | owner         | 10               | False        |
+------------+----------+---------------+------------------+--------------+

CompanyDatabase2> SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "Is
................. PartTime" = 'False';
+------------+------------------+
| FullName   | PhoneExtension   |
|------------+------------------|
| Adam       | 6                |
| Berry      | 7                |
| Carrie     | 8                |
| Dennis     | 9                |
| Emanuel    | 10               |
+------------+------------------+
SELECT 5

CompanyDatabase2> INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", 
................. "PhoneExtension", "IsPartTime")
................. VALUES ('Ferris', 450, 'software developer', 11, 'true');

CompanyDatabase2> UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'c
................. ook';

CompanyDatabase2> DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';
.................

CompanyDatabase2> ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);


//ADVENTURE MODE
createdb CompanyDatabase3

pgcli CompanyDatabase3

CompanyDatabase3> CREATE TABLE "Employees" (
................. "FullName" TEXT NOT NULL,
................. "Salary"   INT,
................. "JobPosition" TEXT NOT NULL,
................. "PhoneExtension" INT NOT NULL,
................. "IsPartTime" BOOLEAN
................. );

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lazy Larry', 100, 'cashier', 1, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Bob', 200, 'boss', 2, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Jim', 300, 'cook', 3, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Nate', 400, 'teacher', 4, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Mary', 500, 'coach', 5, 'true');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Adam', 600, 'driver', 6, 'false');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Berry', 700, 'manager', 7, 'false');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Carrie', 800, 'bartender', 8, 'false');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Dennis', 900, 'host', 9, 'false');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Emanuel', 1000, 'owner', 10, 'false');

CompanyDatabase3> ALTER TABLE "Employees" ADD COLUMN "Id" SERIAL PRIMARY KEY;

CompanyDatabase3> SELECT * FROM "Employees";
-+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | Id   |
|------------+----------+---------------+------------------+--------------+------|
| Mary       | 500      | coach         | 5                | True         | 1    |
| Adam       | 600      | driver        | 6                | False        | 2    |
| Berry      | 700      | manager       | 7                | False        | 3    |
| Carrie     | 800      | bartender     | 8                | False        | 4    |
| Dennis     | 900      | host          | 9                | False        | 5    |
| Emanuel    | 1000     | owner         | 10               | False        | 6    |
| Lazy Larry | 100      | cashier       | 1                | True         | 7    |
| Bob        | 200      | boss          | 2                | True         | 8    |
| Jim        | 300      | cook          | 3                | True         | 9    |
| Nate       | 400      | teacher       | 4                | True         | 10   |
+------------+----------+---------------+------------------+--------------+-----

