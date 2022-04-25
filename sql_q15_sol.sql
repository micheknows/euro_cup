SELECT 
    rm.referee_name, COUNT(mm.match_no)
FROM
    player_booked pb
        JOIN
    match_mast mm ON pb.match_no = mm.match_no
        JOIN
    referee_mast rm ON mm.referee_id = rm.referee_id
GROUP BY referee_name
HAVING COUNT(mm.match_no) = (SELECT 
        MAX(mn)
    FROM
        (SELECT 
            COUNT(mm.match_no) mn
        FROM
            player_booked pb
        JOIN match_mast mm ON pb.match_no = mm.match_no
        JOIN referee_mast rm ON mm.referee_id = rm.referee_id
        GROUP BY referee_name) rn);