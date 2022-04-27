SELECT 
    COUNT(player_name) AS "Number of Captains Who Were Also Goalkeepers"
FROM
    player_mast pm
        JOIN
    playing_position pp ON pp.position_id = pm.posi_to_play
WHERE
    posi_to_play IN (SELECT 
            position_id
        FROM
            playing_position
        WHERE
            position_desc = 'Goalkeepers')
        AND player_id IN (SELECT 
            player_captain
        FROM
            match_captain)
;