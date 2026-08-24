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

CREATE TABLE marriages (
    marriage_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    
    person1_id INT UNSIGNED NOT NULL,
    person2_id INT UNSIGNED NOT NULL,
    
    marriage_year INT,
    end_year INT,
    end_reason VARCHAR(100),

    FOREIGN KEY (person1_id)
        REFERENCES characters(character_id),

    FOREIGN KEY (person2_id)
        REFERENCES characters(character_id)
);

CREATE TABLE dragons (
    dragon_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    color VARCHAR(100),
    status VARCHAR(50)
);

CREATE TABLE dragon_riders (
    rider_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    
    character_id INT UNSIGNED NOT NULL,
    dragon_id INT UNSIGNED NOT NULL,

    FOREIGN KEY (character_id)
        REFERENCES characters(character_id),

    FOREIGN KEY (dragon_id)
        REFERENCES dragons(dragon_id)
);