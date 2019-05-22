CREATE TABLE Employee(
	ID int PRIMARY KEY,
	FirstName varchar(20),
	LastName varchar(30),
	SSN varchar(9),
	DeptID int,
	FOREIGN KEY (DeptID) REFERENCES Department(ID)
	);
	
CREATE TABLE Department(
	ID int PRIMARY KEY,
	Name varchar(50),
	Location varchar(100)
	);
	
CREATE TABLE EmpDetails(
	ID int PRIMARY KEY,
	EmployeeID int,
	Salary decimal,
	Address1 varchar(30),
	Address2 varchar(30),
	City varchar(20),
	State varchar(2),
	Country varchar(30)
	);
	
INSERT INTO Employee(ID, FirstName, LastName, SSN, DeptID)
VALUES  (401, 'Michael', 'Scott', 'TWSH3SA1D', 800),
		(402, 'Dwight', 'Schrute', 'B3ATFARM9', 801),
		(403, 'Pam', 'Beasley', '4Y3RS2JIM', 802);
		
INSERT INTO Department(ID, Name, Location)
VALUES  (800, 'Management', 'New York'),
		(801, 'Sales', 'Scranton'),
		(802, 'Reception', 'Scranton');
		
INSERT INTO EmpDetails(ID, EmployeeID, Salary, Address1, Address2, City, State, Country)
VALUES	(1, 401, 80000.00, 'East Eighth Street', 'Apt 6', 'Boulder', 'CO', 'US'),
		(2, 402, 60000.00, 'Shrute Farms', 'Homestead 1', 'Scranton', 'PA', 'US'),
		(3, 403, 30000.00, 'Halpert Place', '', 'Scranton', 'PA', 'US');