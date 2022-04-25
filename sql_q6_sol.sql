SELECT 
   COUNT(*) AS "Number of Matches"
FROM
   match_details
WHERE
	win_lose='W' AND
	goal_score=1 AND
    decided_by<>'P';