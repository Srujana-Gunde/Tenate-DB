
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


