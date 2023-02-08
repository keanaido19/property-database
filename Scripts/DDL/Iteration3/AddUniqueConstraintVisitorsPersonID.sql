USE PropertyManagementSystem

ALTER TABLE Visitors
	ADD CONSTRAINT AK_PersonID_3 UNIQUE(PersonID)

GO