USE PropertyManagementSystem

CREATE TABLE Visitors (
	VisitorID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	PersonID int NOT NULL FOREIGN KEY(PersonID) REFERENCES PersonLookup(PersonID)
)

GO