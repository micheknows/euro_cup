SELECT 
    referee_name AS 'Referee', COUNT(*) AS 'Number of Bookings'
FROM
    player_booked pb
        JOIN
    match_mast mm ON mm.match_no = pb.match_no
        JOIN
    referee_mast rm ON rm.referee_id = mm.referee_id
GROUP BY referee_name
ORDER BY COUNT(*) DESC
;