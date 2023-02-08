USE PropertyManagementSystem

CREATE TABLE PhoneLookup (
	PhoneID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Code char(10) NOT NULL,
	Number char(10) NOT NULL
)

GO