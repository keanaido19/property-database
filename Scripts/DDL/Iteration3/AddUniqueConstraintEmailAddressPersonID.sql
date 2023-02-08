USE PropertyManagementSystem

ALTER TABLE EmailAddress
	ADD CONSTRAINT AK_PersonID UNIQUE(PersonID)

GO