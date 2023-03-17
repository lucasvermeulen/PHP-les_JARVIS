/*
	CREATE DATABASE zou voldoende zijn, alleen werkt dat alleen als de database nog niet bestaat. 
	Dit Script kan altijd opnieuw uitgevoerd worden.
*/
DROP DATABASE IF EXISTS sterrenstelsel;
-- opdracht 1: Te Big Bang.
CREATE DATABASE sterrenstelsel;
-- Opdracht 2: Our first table
USE sterrenstelsel;

CREATE TABLE planeten
(
naam VARCHAR(255) NULL
);
-- Opdracht 3. Te Universe expands
USE sterrenstelsel;
INSERT INTO planeten (naam) VALUES("Zon");
INSERT INTO planeten (naam) VALUES("Mercurius");
INSERT INTO planeten (naam) VALUES("Venus");
INSERT INTO planeten (naam) VALUES("Aarde");
INSERT INTO planeten (naam) VALUES("Marsnaam");

-- Opdracht 4 Sterrenstof...
ALTER TABLE planeten
ADD diameter BIGINT;

ALTER TABLE planeten
ADD afstand BIGINT;

ALTER TABLE planeten
ADD massa decimal(8,2);
-- andere manier t.o.v. 3, maar beiden zijn mogelijk bij deze odpracht...
INSERT INTO planeten (naam, diameter, afstand, massa)
VALUES 
    ('Zon', 1392000, 0, 332946),
    ('Mercurius', 4880, 57910000, 0.1),
    ('Venus', 12104, 108208930, 0.9),
    ('Aarde', 12756, 149597870, 1),
    ('Maan', 3474, 149626000, 0.1),
    ('Mars', 6794, 227936640, 0.1),
    ('Jupiter', 142984, 778412010, 318),
    ('Saturnus', 120536, 1426725400, 95),
    ('Uranus', 51118, 2870972200, 15),
    ('Neptunes', 49572, 4498252900, 17);

-- Opdracht 5 What is time?	
-- Let op decimal: bekijk op w3schools waar deze getallen (8 en 2) voor staan...
TRUNCATE planeten;
ALTER TABLE planeten
MODIFY COLUMN naam VARCHAR(255) NOT NULL,
MODIFY COLUMN diameter BIGINT NOT NULL,
MODIFY COLUMN afstand BIGINT NOT NULL,
MODIFY COLUMN massa decimal(8,2) NOT NULL,
ADD COLUMN bezoekdatum DATE NULL;
    


INSERT INTO planeten (naam, diameter, afstand, massa, bezoekdatum)
VALUES 
    ('Zon', 1392000, 0, 332946, NULL),
    ('Mercurius', 4880, 57910000, 0.1, NULL),
    ('Venus', 12104, 108208930, 0.9, NULL),
    ('Aarde', 12756, 149597870, 1, NULL),
    ('Maan', 3474, 149626000, 0.1, '1969-07-20'),
    ('Mars', 6794, 227936640, 0.1, NULL),
    ('Jupiter', 142984, 778412010, 318, NULL),
    ('Saturnus', 120536, 1426725400, 95, NULL),
    ('Uranus', 51118, 2870972200, 15, NULL),
    ('Neptunes', 49572, 4498252900, 17, NULL);
-- Opdracht 6 Nieuwe planeet...

ALTER TABLE planeten ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
-- id hoeft niet in het rijtje van veldnamen te staan; verhoogt na namelijk automatisch de waarde die erin komt te staan t.o.v. de vorige
INSERT INTO sterrenstelsel.planeten 
(naam, diameter, afstand, massa, bezoekdatum, id)
VALUES ('Mars', 6794, 227936640, 0, null, null);
