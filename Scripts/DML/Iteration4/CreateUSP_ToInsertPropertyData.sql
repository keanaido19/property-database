CREATE OR ALTER PROCEDURE uspInsertPropertyData
	@LocationID int
AS
	INSERT INTO Properties
		(LocationID)
	VALUES
		(@LocationID)
GO