USE PropertyManagementSystem

CREATE TABLE Houses (
	HouseID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	PropertyID int NOT NULL UNIQUE FOREIGN KEY(PropertyID) REFERENCES Properties(PropertyID)
)

GO