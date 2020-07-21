

CREATE TABLE ADDRESSES(
AD_ID INT NOT NULL IDENTITY(2,1),
NAME VARCHAR(255),
DESCRIPTION TEXT,
PIN_CODE INT,
CITY VARCHAR(255),
HOUSE_ID INT NOT NULL,
PRIMARY KEY(AD_ID),
FOREIGN KEY(HOUSE_ID) REFERENCES HOUSES(HOUSE_ID)
);


INSERT INTO ADDRESSES(NAME,DESCRIPTION,PIN_CODE,CITY, HOUSE_ID)
values('Zaanz appartment','Sterling BrookSide, Opp. Kundalahalli Colony,ITPL Main Rd',560037,'bangalore',1);
values('stag saptgiri','No.44,Ground floor,20th cross,Sector 2 HSR Layout Bangalore',560102,'bangalore',2);
values('sri sai enclave','No.44,First floor,20th cross,Sector 2 HSR Layout',560102,'bangalore',3);
values('orchids building','D-208, Balaji Pristine Whitefield Main Road',560066,'bangalore',4);
values('Fella homes','#11,Annaiya Reddy Rd, Narayana Reddy Layout,Phase 2, Electronic City',560100,'bangalore',5);
values('Juniper appartments','# 595/1, 1st Floor,1st A main, Domlur Layout',560038,'bangalore',6);
values('UDB Building','Flat No: T1 Deccan Field Appartment Kunadanhalli main road',560037,'bangalore',7);
values('Apoorva society','Flat No-202, Apoorva Apartment No-296 Vyalikaval House Building Cooperative Society Ltd Nagavara',561202,'Delhi',8);
values('Stag saptgiri','Flat No-202, stag saptgiri No-26 phase2 Cooperative Society',560045,'Delhi',9);
values('VaK Residency','302,#473 VAK Residency, B-Block, AECS Layout Kundalahalli',456738,'Delhi',10);
values('Sunshine hills','Flat no 3, water ville apartment R.galli',100234,'Delhi',11);
values('Sri Sai appartment','2nd House, No-80/289, Sri Hari Darshan Nilaya, Ground Floor, Bellandur',560107,'Delhi',12);
values('Barvika Residency','B105, 1st floor, B block, Barvika Residency',5610023,'Delhi',13);
values('Nestaway building','#157, 4th Cross, 1st Main Road, Lower Palace Orchard',546783,'Delhi',14);
values('Windsor Plaza','#301, Windsor Plaza,ITPL',560025,'Pune',15);
values('Indira society','No. 502, Indira Meadows, Arunodaya Colony',302017,'Pune',16);
values('Sri Krishna Society','Flat No-211 Sri Krishna sai enclave, Hoodi village, beside Vivekananda Ashram, Mahadevapura post',560048,'Pune',17);
values('uniworld','D1-1201, Uniworld Garden 2',543678,'Pune',18);
VALUES ('Vinayaka residency','49, House 1 lathangi 2nd main vinayaka housing layout, RMV 2nd stage bhoopasandra',560094,'Pune',19);
values('Sun city appartments','Majeera Diamond Towers,malad-west',5600263,'Pune',20);
