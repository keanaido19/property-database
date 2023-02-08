USE PropertyManagementSystem

CREATE TABLE StaffMembers (
	StaffID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	RoleID char(4) NOT NULL FOREIGN KEY(RoleID) REFERENCES StaffRoles(RoleID) ON UPDATE CASCADE,
	PersonID int NOT NULL FOREIGN KEY(PersonID) REFERENCES PersonLookup(PersonID)
)

GO