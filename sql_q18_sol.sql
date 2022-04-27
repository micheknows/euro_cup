/*  I am not sure what a foul card is.  From googling, the best I can determine is that "booking" a player means
/* they get a yellow card, which I assume is a foul card.  So, I am basing the solution to this question on this since
/* I do not know the correct background knowledge.  */

SELECT 
	mm.match_no AS "Match",
    COUNT(pb.match_no) AS "Number of Foul Cards"
FROM 
	match_mast mm
    JOIN player_booked pb ON pb.match_no=mm.match_no
GROUP BY mm.match_no
	HAVING COUNT(pb.match_no)=
    (
		SELECT COUNT(pb2.match_no) totalCount
        FROM player_booked pb2
        JOIN match_mast mm2 ON mm2.match_no=pb2.match_no
		GROUP BY mm2.match_no
        ORDER BY totalCount DESC
        LIMIT 1
    )
;