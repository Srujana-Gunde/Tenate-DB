
1. SELECT TOP 1 TENANCY_HISTORIES.PROFILE_ID
	,first_name + ' ' + last_name AS Full_Name
	,phone
	,DATEDIFF(DAY, TENANCY_HISTORIES.MOVE_IN_DATE, TENANCY_HISTORIES.MOVE_OUT_DATE) AS Duration
FROM PROFILES
JOIN TENANCY_HISTORIES ON PROFILES.PROFILE_ID = TENANCY_HISTORIES.PROFILE_ID
ORDER BY Duration DESC;


2.SELECT first_name + ' ' + last_name AS Full_Name
	,email
	,phone
	,TENANCY_HISTORIES.RENT
FROM Profiles
JOIN tenancy_histories ON Profiles.profile_id = tenancy_histories.profile_id
WHERE TENANCY_HISTORIES.RENT > 9000
	AND PROFILES.MARTIAL_STATUS = 'Y';




	3. SELECT TOP 1 first_name + ' ' + last_name AS Full_Name
	,phone
	,email
	,CITY
	,TENANCY_HISTORIES.HOUSE_ID
	,TENANCY_HISTORIES.MOVE_IN_DATE
	,TENANCY_HISTORIES.MOVE_OUT_DATE
	,TENANCY_HISTORIES.rent
	,(
		SELECT TOP 1 PERCENT count(*) AS Number_of_times_referred
		FROM referrals
		GROUP BY REFERRER_ID
		ORDER BY Number_of_times_referred DESC
			,REFERRER_ID
		) AS Total_times_referred
	,EMPLOYMENT_DETAILS.latest_employer
	,employment_details.occupational_category
FROM PROFILES
JOIN TENANCY_HISTORIES ON PROFILES.PROFILE_ID = TENANCY_HISTORIES.PROFILE_ID
JOIN REFERRALS ON PROFILES.PROFILE_ID = REFERRALS.REFERRER_ID
JOIN EMPLOYMENT_DETAILS ON PROFILES.PROFILE_ID = EMPLOYMENT_DETAILS.PROFILE_ID
WHERE CITY IN (
		'bangalore'
		,'pune'
		)
	AND MOVE_IN_DATE >= '2015-01-01'
	AND MOVE_OUT_DATE <= '2016-01-31'
ORDER BY rent DESC





4.SELECT PROFILES.FIRST_NAME + ' ' + PROFILES.LAST_NAME AS Full_Name
	,PROFILES.EMAIL
	,PROFILES.PHONE
	,PROFILES.REFERRAL_CODE
	,sum(referrals.referrer_bonus_amount) AS Total_Bonus_Amount
FROM REFERRALS
JOIN PROFILES ON REFERRALS.REFERRER_ID = PROFILES.PROFILE_ID
GROUP BY profiles.FIRST_NAME
	,profiles.LAST_NAME
	,profiles.EMAIL
	,profiles.PHONE
	,profiles.REFERRAL_CODE
	,referrals.REFERRER_ID
HAVING count(*) > 1


5. SELECT PROFILES.CITY
	,sum(RENT) AS CITY_RENT
	,(
		SELECT sum(TENANCY_HISTORIES.RENT)
		FROM TENANCY_HISTORIES
		) AS TOTAL_RENT
FROM PROFILES
JOIN TENANCY_HISTORIES ON PROFILES.PROFILE_ID = TENANCY_HISTORIES.PROFILE_ID
GROUP BY CITY



6. CREATE VIEW vw_tenant
AS
SELECT TENANCY_HISTORIES.PROFILE_ID
	,TENANCY_HISTORIES.RENT
	,TENANCY_HISTORIES.MOVE_IN_DATE
	,HOUSES.HOUSE_TYPE
	,HOUSES.BEDS_VACANT
	,ADDRESSES.DESCRIPTION
	,ADDRESSES.CITY
	,ADDRESSES.NAME
FROM TENANCY_HISTORIES
JOIN HOUSES ON TENANCY_HISTORIES.HOUSE_ID = HOUSES.HOUSE_ID
JOIN ADDRESSES ON TENANCY_HISTORIES.HOUSE_ID = ADDRESSES.HOUSE_ID
WHERE TENANCY_HISTORIES.MOVE_IN_DATE >= '2015-04-30'
	AND HOUSES.BEDS_VACANT >= 1

SELECT *
FROM vw_tenant




7.  UPDATE referrals
SET valid_till = DATEADD(MM, 1, valid_till)
WHERE referrer_id IN (
		SELECT referrer_id
		FROM referrals
		GROUP BY referrer_id
		HAVING COUNT(*) > 2
		)

select VALID_TILL from REFERRALS WHERE referrer_id IN (
		SELECT referrer_id
		FROM referrals
		GROUP BY referrer_id
		HAVING COUNT(*) > 2
		)



8. SELECT PROFILES.PROFILE_ID
	,PROFILES.FIRST_NAME + ' ' + PROFILES.LAST_NAME AS Full_Name
	,PROFILES.PHONE
	,TENANCY_HISTORIES.RENT
	,CASE 
		WHEN rent > 10000
			THEN 'GRADE A'
		WHEN rent BETWEEN 7500
				AND 10000
			THEN 'GRADE B'
		ELSE 'GRADE C'
		END AS customer_segment
FROM tenancy_histories
JOIN PROFILES ON TENANCY_HISTORIES.PROFILE_ID = PROFILES.PROFILE_ID



 9. SELECT first_name + ' ' + last_name AS Full_Name
	,profiles.phone
	,profiles.city
	,houses.bhk_details
FROM profiles
INNER JOIN tenancy_histories ON profiles.profile_id = tenancy_histories.profile_id
INNER JOIN houses ON tenancy_histories.house_id = houses.house_id
WHERE profiles.profile_id NOT IN (
		SELECT referrer_id
		FROM referrals
		)


10. SELECT TOP (1)
WITH ties Addresses.house_id
	,Addresses.name
	,Houses.house_type
	,Houses.bhk_details
	,Houses.furnishing_type
	,(Houses.bed_count - Houses.Beds_vacant) AS HIGHEST_OCCUPANCY
FROM Addresses
INNER JOIN Houses ON Addresses.house_id = Houses.house_id
ORDER BY HIGHEST_OCCUPANCY DESC;