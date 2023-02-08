USE PropertyManagementSystem

CREATE TABLE PersonLocation (
	PersonLocationID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	PersonID int NOT NULL UNIQUE FOREIGN KEY(PersonID) REFERENCES PersonLookup(PersonID),
	LocationID int NOT NULL FOREIGN KEY(LocationID) REFERENCES Location(LocationID)
)

GO