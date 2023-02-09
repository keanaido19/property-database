USE PropertyManagementSystem
GO

CREATE OR ALTER VIEW vContactDetails
AS
SELECT p.FirstName, p.LastName, e.EmailAddress, ('+' + ph.Code + ' ' + ph.Number) AS [PhoneNumber] 
FROM PersonLookup p INNER JOIN EmailAddress e ON p.PersonID = e.PersonID INNER JOIN PersonPhone pp ON pp.PersonID = p.PersonID INNER JOIN PhoneLookup ph ON ph.PhoneID = pp.PhoneID

GO