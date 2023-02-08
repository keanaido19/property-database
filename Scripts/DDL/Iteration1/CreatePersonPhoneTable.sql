USE PropertyManagementSystem

CREATE TABLE PersonPhone (
	PersonPhoneID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	PersonID int NOT NULL FOREIGN KEY(PersonID) REFERENCES PersonLookup(PersonID),
	PhoneID int NOT NULL FOREIGN KEY(PersonID) REFERENCES PhoneLookup(PhoneID),
)

GO