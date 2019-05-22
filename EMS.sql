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
	
	