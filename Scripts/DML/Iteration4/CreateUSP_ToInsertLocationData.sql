CREATE OR ALTER PROCEDURE uspInsertLocationData
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
GO