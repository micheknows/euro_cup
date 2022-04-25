SELECT 
    player_name AS 'Player Name',
    jersey_no AS 'Jersey Number',
    position_desc AS 'Position',
    dt_of_bir AS 'Date of Birth',
    age AS 'Age',
    playing_club AS "Under Contract to",
    country_name AS "Playing For"
FROM
    player_mast pm
        JOIN
    playing_position pp ON pm.posi_to_play = pp.position_id
    JOIN soccer_country sc ON pm.team_id=sc.country_id
WHERE
    playing_club = 'Liverpool' AND country_name="England";