CREATE OR ALTER FUNCTION udfAddLocationAndPropertyDataAndGetPropertyID
	(
	@Street varchar(30),
	@City varchar(20),
	@Province varchar(20),
	@Zip varchar(10),
	@Country varchar(20)
	)
	RETURNS int
AS
BEGIN
	EXEC uspInsertLocationData @Street, @City, @Province, @Zip, @Country

	DECLARE @LocationID int
	SET @LocationID = SCOPE_IDENTITY()

	EXEC uspInsertPropertyData @LocationID

	RETURN SCOPE_IDENTITY()
END

GO