USE PropertyManagementSystem

CREATE TABLE PersonLookup (
	PersonID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	FirstName varchar(20) NOT NULL,
	LastName varchar(20) NOT NULL
)

GO