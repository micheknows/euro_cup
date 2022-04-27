SELECT
	country_name AS "Country Where Most Assistant Referees Are From",
    COUNT(DISTINCT ass_ref_id) AS "Number of Assistant Referees"
FROM 
	asst_referee_mast am
    JOIN soccer_country sc ON sc.country_id=am.country_id
GROUP BY country_name
HAVING
	COUNT(DISTINCT(ass_ref_id))=
    (
		SELECT COUNT(DISTINCT(ass_ref_id)) totalCount
        FROM asst_referee_mast am2
			JOIN soccer_country sc2 ON sc2.country_id=am2.country_id
		GROUP BY country_name
        ORDER BY totalCount DESC
        LIMIT 1
    )
;