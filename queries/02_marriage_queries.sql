SELECT
    p1.name AS spouse_1,
    p2.name AS spouse_2,
    m.marriage_year,
    m.end_year,
    m.end_reason
FROM marriages m
JOIN characters p1
    ON m.person1_id = p1.character_id
JOIN characters p2
    ON m.person2_id = p2.character_id;

-- Find all spouses of Aegon I Targaryen

SELECT
    CASE
        WHEN p1.name = 'Aegon I Targaryen'
        THEN p2.name
        ELSE p1.name
    END AS spouse
FROM marriages m
JOIN characters p1
    ON m.person1_id = p1.character_id
JOIN characters p2
    ON m.person2_id = p2.character_id
WHERE p1.name = 'Aegon I Targaryen'
   OR p2.name = 'Aegon I Targaryen';
