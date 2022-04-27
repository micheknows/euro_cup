SELECT 
    player_name AS 'Substitute Player Who Came Into The Field In the First Half of Play Within A Normal Play Schedule'
FROM
    player_mast pm
        JOIN
    player_in_out pio ON pio.player_id = pm.player_id
WHERE
    in_out = 'I' AND play_schedule = 'NT'
        AND play_half = 1
;