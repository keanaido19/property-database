USE PropertyManagementSystem
GO

CREATE OR ALTER VIEW vApartments
AS
	SELECT l.Number AS [LotNumber], Name AS [ApartmentName], a.ApartmentID, l.LotID, Street, City, Province, Country, l1.LocationID, l.PropertyID
	FROM Apartments a INNER JOIN ApartmentLots al ON al.ApartmentID = a.ApartmentID INNER JOIN Lots l ON l.LotID = al.LotID INNER JOIN Properties p ON l.PropertyID = p.PropertyID INNER JOIN Location l1 ON l1.LocationID = p.LocationID

GO