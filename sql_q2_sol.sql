SELECT 
    COUNT(*) AS "Number of Matches Won By Penalty Shootout"
FROM
    match_mast
WHERE
	decided_by='P';