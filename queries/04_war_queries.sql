SELECT
    w.name AS war,
    b.name AS battle,
    b.battle_year,
    b.location
FROM battles b
JOIN wars w
    ON b.war_id = w.war_id;