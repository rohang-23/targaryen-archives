SELECT
    c.name AS rider,
    d.name AS dragon
FROM dragon_riders dr
JOIN characters c
    ON dr.character_id = c.character_id
JOIN dragons d
    ON dr.dragon_id = d.dragon_id;
    