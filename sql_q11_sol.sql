SELECT 
    player_name AS 'Player',
    jersey_no AS 'Jersey Number',
    playing_club AS 'Playing Club',
    position_desc AS 'Position',
    country_name AS 'Playing For'
FROM
    player_mast pm
        JOIN
    playing_position pp ON pm.posi_to_play = pp.position_id
        JOIN
    soccer_country sc ON sc.country_id = pm.team_id
WHERE
    position_desc = 'Goalkeepers'
        AND country_name = 'England';