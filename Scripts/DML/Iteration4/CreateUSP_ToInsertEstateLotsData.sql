USE PropertyManagementSystem
GO

CREATE OR ALTER PROCEDURE uspInsertEstateLotData
	@Number varchar(4),
	@EstateID int,
	@Street varchar(30),
	@City varchar(20),
	@Province varchar(20),
	@Zip varchar(10),
	@Country varchar(20)
AS
	DECLARE @ID int NULL

	SELECT @ID = EstateID FROM Estates WHERE EstateID = @EstateID

	IF @ID IS NOT NULL
	BEGIN
	
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

		INSERT INTO Lots
			(Number, PropertyID)
		VALUES
			(@Number, @PropertyID)

		DECLARE @LotID int
		SELECT @LotID = SCOPE_IDENTITY()

		INSERT INTO EstateLots
			(LotID, EstateID)
		VALUES
			(@LotID, @EstateID)
	END
	ELSE
	PRINT('EstateID does not exist')

GO