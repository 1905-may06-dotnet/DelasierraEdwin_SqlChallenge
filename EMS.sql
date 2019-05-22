CREATE TABLE Department(
	ID int PRIMARY KEY,
	Name varchar(50),
	Location varchar(100)
	);

CREATE TABLE Employee(
	ID int PRIMARY KEY,
	FirstName varchar(20),
	LastName varchar(30),
	SSN varchar(9),
	DeptID int,
	FOREIGN KEY (DeptID) REFERENCES Department(ID)
	);
	
CREATE TABLE EmpDetails(
	ID int PRIMARY KEY,
	EmployeeID int,
	Salary decimal,
	Address1 varchar(30),
	Address2 varchar(30),
	City varchar(20),
	State varchar(2),
	Country varchar(30),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(ID)
	);
		
INSERT INTO Department(ID, Name, Location)
VALUES  (800, 'Management', 'New York'),
		(801, 'Sales', 'Scranton'),
		(802, 'Reception', 'Scranton');
		
INSERT INTO Employee(ID, FirstName, LastName, SSN, DeptID)
VALUES  (401, 'Michael', 'Scott', 'TWSH3SA1D', 800),
		(402, 'Dwight', 'Schrute', 'B3ATFARM9', 801),
		(403, 'Pam', 'Beasley', '4Y3RS2JIM', 802);
		
INSERT INTO EmpDetails(ID, EmployeeID, Salary, Address1, Address2, City, State, Country)
VALUES	(1, 401, 80000.00, 'East Eighth Street', 'Apt 6', 'Boulder', 'CO', 'US'),
		(2, 402, 60000.00, 'Shrute Farms', 'Homestead 1', 'Scranton', 'PA', 'US'),
		(3, 403, 30000.00, 'Halpert Place', '', 'Scranton', 'PA', 'US');

INSERT INTO Department(ID, Name, Location)
VALUES	(810, 'Marketing', 'Philadelphia');

INSERT INTO Employee(ID, FirstName, LastName, SSN, DeptID)
VALUES	(410, 'Tina', 'Smith', '999119999', 810),
		(411, 'Angus', 'Beef', 'WH3R3B33F', 810);

INSERT INTO EmpDetails(ID, EmployeeID, Salary, Address1, Address2, City, State, Country)
VALUES	(4, 410, 50000.00, 'Fifth Avenue', 'Suite 301', 'New York', 'NY', 'US'),
		(5, 411, 75000.00, 'Park Row Drive', '', 'Arlington', 'TX', 'US');

SELECT * FROM Employee WHERE DeptID=810;

SELECT SUM(Salary) FROM EmpDetails WHERE EmployeeID IS IN Department.Name = 'Marketing';

SELECT COUNT() FROM Employee GROUP BY DeptID;

UPDATE EmpDetails
SET Salary = 90000.00
WHERE EmpID = 410