SELECT 
    match_no AS "Match Number",
    play_date AS "Date",
    goal_score AS "Score"
FROM
    match_mast
WHERE
	stop1_sec=0;