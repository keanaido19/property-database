CREATE PROCEDURE uspInsertPersonInformation
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

	SELECT @PersonID = MAX(PersonID) FROM PersonLookup

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


	SELECT @PhoneID = MAX(PhoneID) FROM PhoneLookup

	INSERT INTO PersonPhone
		(PersonID, PhoneID)
	VALUES
		(@PersonID, @PhoneID)

GO