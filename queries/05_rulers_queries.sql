SELECT
    r.reign_id,
    c.name AS ruler,
    r.title,
    r.start_year,
    r.end_year
FROM rulers r
JOIN characters c
    ON r.character_id = c.character_id;
    