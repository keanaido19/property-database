USE PropertyManagementSystem
GO

CREATE OR ALTER PROCEDURE uspInsertEstateData
	@Name varchar(30),
	@Street varchar(30),
	@City varchar(20),
	@Province varchar(20),
	@Zip varchar(10),
	@Country varchar(20)
AS
	INSERT INTO Location
		(Street, City, Province, Zip, Country)
	VALUES
		(@Street, @City, @Province, @Zip, @Country)

	DECLARE @LocationID int
	SELECT @LocationID = SCOPE_IDENTITY()

	INSERT INTO Properties
		(LocationID)
	VALUES
		(@LocationID)

	DECLARE @PropertyID int
	SELECT @PropertyID = SCOPE_IDENTITY()

	INSERT INTO Estates
		(Name, PropertyID)
	VALUES
		(@Name, @PropertyID)
GO