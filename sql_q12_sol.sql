SELECT 
    country_name AS 'Country',
    position_desc AS 'Position',
    COUNT(*) AS 'Goals Scored'
FROM
    goal_details gd
        JOIN
    player_mast pm ON gd.player_id = pm.player_id
        JOIN
    soccer_country sc ON gd.team_id = sc.country_id
        JOIN
    playing_position pp ON pm.posi_to_play = pp.position_id
GROUP BY country_name , position_desc
ORDER BY COUNT(*) DESC;
;