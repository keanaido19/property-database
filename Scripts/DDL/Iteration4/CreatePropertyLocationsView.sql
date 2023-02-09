CREATE VIEW vPropertyLocations
AS
	SELECT p.PropertyID, pt.Name, l.street, l.city, l.Province, l.Country
	FROM Properties p INNER JOIN PropertyTypes pt ON p.PropertyTypeID = pt.PropertyTypeID INNER JOIN Location l on l.LocationID = p.LocationID

GO