USE PropertyManagementSystem

CREATE TABLE Lots (
	LotID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Number varchar(4),
	PropertyID int NOT NULL UNIQUE FOREIGN KEY(PropertyID) REFERENCES Properties(PropertyID)
)

GO