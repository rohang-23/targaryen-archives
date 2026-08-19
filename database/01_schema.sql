CREATE DATABASE targaryen_archives;

USE targaryen_archives;

CREATE TABLE characters (
    character_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(20),
    birth_year INT,
    death_year INT,
    birthplace VARCHAR(100),
    status VARCHAR(30)
);

CREATE TABLE relationships (
    relationship_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    person_id INT UNSIGNED NOT NULL,
    related_person_id INT UNSIGNED NOT NULL,
    relationship_type VARCHAR(30) NOT NULL,

    FOREIGN KEY (person_id)
        REFERENCES characters(character_id),

    FOREIGN KEY (related_person_id)
        REFERENCES characters(character_id)
);