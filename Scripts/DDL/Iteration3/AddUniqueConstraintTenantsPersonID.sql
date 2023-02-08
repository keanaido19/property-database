USE PropertyManagementSystem

ALTER TABLE Tenants
	ADD CONSTRAINT AK_PersonID_2 UNIQUE(PersonID)

GO