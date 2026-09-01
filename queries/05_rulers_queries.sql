SELECT
    r.reign_id,
    c.name AS ruler,
    r.title,
    r.start_year,
    r.end_year
FROM rulers r
JOIN characters c
    ON r.character_id = c.character_id;

SELECT
    c.name,
    r.start_year,
    r.end_year,
    r.end_year - r.start_year AS reign_period
FROM rulers r
JOIN characters c
    ON r.character_id = c.character_id
WHERE r.end_year - r.start_year > 5;