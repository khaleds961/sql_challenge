1- Basic Queries:

SELECT name from students
SELECT * from students WHERE Age > 30
SELECT name from students where Gender='F' AND age>30
SELECT Points from students where name='Alex'
INSERT into students (Name,Age,Gender,Points) VALUES ('Khaled','25','M','200')
update students set Points='350' WHERE name='Basma'
UPDATE students set Points='150' WHERE name='Alex'

# Part 2: Creating Table

# Create table graduates
CREATE TABLE graduates(
ID INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
Name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation TEXT);

# Copy Layal's data from students to graduates
INSERT INTO graduates(Name, Age, Gender, Points)
VALUES ("Layal",18,"F",350);

# Add the graduation date previously mentioned to Layal's record in graduates
UPDATE graduates
SET Graduation="08/09/2018"
WHERE name="Layal";

# Remove Layal's record from students
DELETE FROM students 
WHERE name="Layal";

# Part 3 : Join
1- SELECT companies.Date ,companies.Name, employees.name FROM companies INNER JOIN employees on 
companies.name= employees.Company;
2- SELECT employees.name FROM employees inner join companies on employees.Company=companies.name and companies.date<2000
3- SELECT companies.name FROM companies inner join employees on employees.Company=companies.name AND
 employees.Role="Graphic Designer"


#Part 4 : Count & Filter
1- SELECT * ,max(Points) from students 
2- SELECT avg(Points) from students 
3- SELECT count(ID) from students WHERE Points=500;
4- SELECT name from students where name like "%s%"
5- SELECT * from students ORDER by Points DESC;

