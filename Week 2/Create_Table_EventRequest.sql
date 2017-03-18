CREATE TABLE EventRequest,
(EventNo VARCHAR(8) NOT NULL,
 DateHeld DATE NOT NULL,
 DateReq DATE NOT NULL,
 FacNo VARCHAR(8) NOT NULL, 
 CustNo VARCHAR(8) NOT NULL,
 DateAuth DATE ,
 Status VARCHAR(8) NOT NULL,
 EstCost decimal(8,2) NOT NULL,
 EstAudience char(8) NOT NULL,
 BudNo VARCHAR(8),
 CONSTRAINT PK_EventRequest PRIMARY KEY EventNo,
 CONSTRAINT chk CHECK (EstAudience > 0),
 CONSTRAINT chk_status CHECK ('STATUS' IN ('Pending','Denied','Approved'))
 CONSTRAINT FK2_CustNo FOREIGN KEY (CustNo)
 REFERENCES Customer(CustNo)
 CONSTRAINT FK2_FacNo FOREIGN KEY (FacNo)
 REFERENCES Facility(FacNo) );