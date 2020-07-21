CREATE TABLE REFERRALS(
REF_ID INT NOT NULL IDENTITY,
REFERRER_ID INT NOT NULL,
REFERRER_BONUS_AMOUNT FLOAT,
REFERRAL_VALID TINYINT CHECK (REFERRAL_VALID >=0 AND REFERRAL_VALID<=1),
VALID_FROM DATE,
VALID_TILL DATE,
PRIMARY KEY(REF_ID),
FOREIGN KEY(REFERRER_ID) REFERENCES PROFILES(PROFILE_ID)
);



INSERT INTO REFERRALS(REFERRER_ID,REFERRER_BONUS_AMOUNT,REFERRAL_VALID,VALID_FROM,VALID_TILL)
values(2,2500,1,'7/5/2015','9/5/2015');
values(3,2500,1,'7/5/2015','9/5/2015');
values(5,1000,0,'12/13/2015','2/13/2016');
values(6,2500,0,'4/25/2016','6/24/2016');
values(10,1000,1,'7/1/2015','9/1/2015');
values(12,2500,1,'5/12/2015','7/12/2015');
values(13,2500,0,'8/5/2015','10/5/2015');
values(20,1000,1,'2/5/2016','4/5/2016');
values(2,2500,0,'8/12/2015','9/12/2015');
values(5,1000,1,'2/18/2016','4/18/2016');
values(20,1500,1,'6/19/2016','8/19/2016');
values(9,2500,0,'11/15/2015','1/15/2016');
values(13,1000,1,'2/1/2016','4/1/2016');
values(5,1000,1,'4/25/2016','6/24/2016');