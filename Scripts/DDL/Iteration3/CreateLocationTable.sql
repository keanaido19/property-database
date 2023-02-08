USE PropertyManagementSystem

CREATE TABLE Location (
	LocationID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Street varchar(30) NOT NULL,
	City varchar(20) NOT NULL,
	Province varchar(20) NOT NULL,
	Country varchar(20) NOT NULL,
	GeoLocation geography
)

GO