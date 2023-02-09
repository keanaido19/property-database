USE PropertyManagementSystem
GO

CREATE OR ALTER PROCEDURE uspInsertPersonInformation
	@FirstName varchar(20),
	@LastName varchar(20),
	@EmailAddress varchar(50),
	@CountryCode varchar(10) = NULL,
	@PhoneNumber char(10)
AS
	DECLARE @PersonID int
	DECLARE @PhoneID int

	INSERT INTO PersonLookup 
		(FirstName, LastName)
	VALUES
		(@FirstName, @LastName)

	SELECT @PersonID = SCOPE_IDENTITY()

	INSERT INTO EmailAddress
		(EmailAddress, PersonID)
	VALUES
		(@EmailAddress, @PersonID)

	IF @CountryCode IS NULL
		INSERT INTO PhoneLookup
			(Code, Number)
		VALUES
			('27', @PhoneNumber)
	ELSE
		INSERT INTO PhoneLookup
			(Code, Number)
		VALUES
			(@CountryCode, @PhoneNumber)


	SELECT @PhoneID = SCOPE_IDENTITY()

	INSERT INTO PersonPhone
		(PersonID, PhoneID)
	VALUES
		(@PersonID, @PhoneID)

GO