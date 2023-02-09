USE PropertyManagementSystem
GO

CREATE OR ALTER VIEW vHouses
AS
	SELECT HouseID, Street, p.PropertyID, City, Province, Country, l.LocationID
	FROM Houses h INNER JOIN Properties p ON h.PropertyID = p.PropertyID INNER JOIN Location l ON l.LocationID = p.LocationID

GO