USE PropertyManagementSystem

CREATE TABLE Estates (
	EstateID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Name varchar(30),
	PropertyID int NOT NULL UNIQUE FOREIGN KEY(PropertyID) REFERENCES Properties(PropertyID)
)

GO