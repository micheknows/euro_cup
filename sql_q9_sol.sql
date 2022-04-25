SELECT 
    player_name AS 'Goalkeeper Name',
    jersey_no AS 'Goalkeeper Jersey Number'
FROM
    player_mast
WHERE
    player_id IN (SELECT 
            player_gk
        FROM
            match_details
        WHERE
            play_stage = 'G'
                AND team_id IN (SELECT 
                    country_id
                FROM
                    soccer_country
                WHERE
                    country_name = 'Germany'));