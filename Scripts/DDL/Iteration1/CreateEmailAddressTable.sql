USE PropertyManagementSystem

CREATE TABLE EmailAddress (
	EmailAddress varchar(50) PRIMARY KEY NOT NULL,
	PersonID int NOT NULL FOREIGN KEY(PersonID) REFERENCES PersonLookup(PersonID) 
)

GO