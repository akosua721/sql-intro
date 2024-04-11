-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


SELECT SUM(hits) FROM players
INNER JOIN stats on players.id = stats.player_id
WHERE first_name = "Barry"
AND last_name = "Bonds";
