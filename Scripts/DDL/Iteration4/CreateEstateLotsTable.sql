USE PropertyManagementSystem

CREATE TABLE EstateLots (
	EstateLotID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	EstateID int NOT NULL FOREIGN KEY(EstateID) REFERENCES Estates(EstateID),
	LotID int NOT NULL FOREIGN KEY(LotID) REFERENCES Lots(LotID),
)

ALTER TABLE EstateLots
	ADD CONSTRAINT uq_EstateID_LotID UNIQUE(EstateID, LotID)

GO