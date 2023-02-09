CREATE OR ALTER PROCEDURE uspInsertEstateData
	@Name varchar(30),
	@Street varchar(30),
	@City varchar(20),
	@Province varchar(20),
	@Zip varchar(10),
	@Country varchar(20)
AS
	DECLARE @PropertyID int
	SET @PropertyID = dbo.udfAddLocationAndPropertyDataAndGetPropertyID(@Street, @City, @Province, @Zip, @Country)

	INSERT INTO Estates
		(Name, PropertyID)
	VALUES
		(@Name, @PropertyID)
GO