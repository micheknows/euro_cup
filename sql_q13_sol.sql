SELECT 
    player_name AS 'Player',
    position_desc AS 'Position',
    country_name AS 'Country',
    COUNT(*) AS 'Number of Goals Scored'
FROM
    goal_details gd
        JOIN
    player_mast pm ON gd.player_id = pm.player_id
        JOIN
    soccer_country sc ON gd.team_id = sc.country_id
        JOIN
    playing_position pp ON pm.posi_to_play = pp.position_id
WHERE
    position_desc = 'Defenders'
GROUP BY country_name
ORDER BY COUNT(*) DESC;