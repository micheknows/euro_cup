SELECT 
   play_half AS "Play Half",
   play_schedule AS "Normal Time (NT) or Stoppage Time (ST)",
   COUNT(*) AS "Number of Substitutions"
FROM
   Player_in_out
WHERE
	in_out="I"
GROUP BY play_half, play_schedule
ORDER BY play_half, play_schedule;