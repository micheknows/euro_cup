SELECT
	referee_name AS "Referee",
    venue_name AS "Venue",
    COUNT(*) AS "Number Matches Worked"
FROM 
	match_mast mm
    JOIN soccer_venue sv ON sv.venue_id=mm.venue_id
    JOIN referee_mast rm ON rm.referee_id=mm.referee_id
GROUP BY referee_name, venue_name
ORDER BY referee_name, venue_name
;