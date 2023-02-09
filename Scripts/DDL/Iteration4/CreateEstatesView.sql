USE PropertyManagementSystem
GO

CREATE OR ALTER VIEW vEstates
AS
	SELECT l.Number AS [LotNumber], Name AS [EstateName], e.EstateID, l.LotID, Street, City, Province, Country, l1.LocationID, l.PropertyID
	FROM Estates e INNER JOIN EstateLots el ON el.EstateID = e.EstateID INNER JOIN Lots l ON l.LotID = el.LotID INNER JOIN Properties p ON l.PropertyID = p.PropertyID INNER JOIN Location l1 ON l1.LocationID = p.LocationID

GO