
CREATE TABLE HOUSES(
HOUSE_ID INT NOT NULL IDENTITY,
HOUSE_TYPE VARCHAR(255),
BHK_DETAILS VARCHAR(255),
BED_COUNT INT NOT NULL,
FURNISHING_TYPE VARCHAR(255),
BEDS_VACANT INT NOT NULL,
PRIMARY KEY(HOUSE_ID)
);

INSERT INTO HOUSES(HOUSE_TYPE,BHK_DETAILS ,BED_COUNT,FURNISHING_TYPE ,BEDS_VACANT)
VALUES ('Independent','1 BHK',2,'unfurnished',2);
('Independent','3 BHK',3,'fully-furnished',1);
('Independent','2 BHK',2,'fully-furnished',1);
('Independent','3 BHK',3,'fully-furnished',1);
('Apartment','3 BHK',3,'fully-furnished',0);
('Independent','1 BHK',2,'unfurnished',1);
('Apartment','3 BHK',3,'fully-furnished',0);
 ('Independent','2 BHK',4,'unfurnished',2);
 ('Independent','1 BHK',2,'unfurnished',1);
('Apartment','1 BHK',1,'unfurnished',0);
('Independent','3 BHK',3,'fully-furnished',1);
('Independent','1 BHK',2,'unfurnished',0);
('Apartment','2 BHK',4,'fully-furnished',1);
('Apartment','3 BHK',3,'semifurnished',0);
('Apartment','3 BHK',3,'semifurnished',1);
('Independent','4 BHK',4,'fully-furnished',2);
('Apartment','2 BHK',2,'fully-furnished',0);
('Apartment','3 BHK',6,'fully-furnished',4);
('Apartment','3 BHK',5,'unfurnished',2);
('Apartment','3 BHK',3,'unfurnished',1);