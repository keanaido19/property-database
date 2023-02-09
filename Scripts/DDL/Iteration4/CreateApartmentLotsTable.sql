USE PropertyManagementSystem

CREATE TABLE ApartmentLots (
	ApartmentLotID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	ApartmentID int NOT NULL FOREIGN KEY(ApartmentID) REFERENCES Apartments(ApartmentID),
	LotID int NOT NULL FOREIGN KEY(LotID) REFERENCES Lots(LotID),
)

ALTER TABLE ApartmentLots
	ADD CONSTRAINT uq_ApartmentID_LotID UNIQUE(ApartmentID, LotID)

GO