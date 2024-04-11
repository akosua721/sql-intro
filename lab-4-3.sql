-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT name, first_name, last_name, home_runs
FROM teams
INNER JOIN stats on teams.id = stats.team_id
INNER JOIN players on players.id = stats.player_id
WHERE year = 2019
ORDER BY stats.home_runs DESC
LIMIT 1;
