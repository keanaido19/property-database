USE PropertyManagementSystem

CREATE TABLE Properties (
	PropertyID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	PropertyTypeID char(4) NOT NULL FOREIGN KEY(PropertyTypeID) REFERENCES PropertyTypes(PropertyTypeID),
	LocationID int NOT NULL UNIQUE FOREIGN KEY(LocationID) REFERENCES Location(LocationID)
)

GO