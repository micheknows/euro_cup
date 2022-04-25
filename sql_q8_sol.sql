SELECT 
    match_no AS "Match Number", 
    team_id as "Team",
    COUNT(*) AS "Number of Penalty Shots"
FROM
    penalty_shootout
GROUP BY match_no
HAVING COUNT(*) = 
	(SELECT 
        MAX(shots)
    FROM
        (SELECT 
            COUNT(*) shots
        FROM
            penalty_shootout
        GROUP BY match_no) inner_result); 