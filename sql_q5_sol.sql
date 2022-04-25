SELECT 
   play_schedule AS "Stoppage Time (ST)",
   COUNT(*) AS "Number of Bookings"
FROM
   player_booked
WHERE
	play_schedule="ST"
GROUP BY play_schedule
ORDER BY play_schedule;