CREATE DATABASE sterrenstelsel;

CREATE TABLE planeten
(
	naam varchar(255)
);

SELECT * FROM `planeten`;
INSERT INTO planeten (naam) VALUES("Zon");
INSERT INTO planeten (naam) VALUES("Mercurius");
INSERT INTO planeten (naam) VALUES("Venus");
INSERT INTO planeten (naam) VALUES("Aarde");
INSERT INTO planeten (naam) VALUES("Mars");

SELECT * FROM `planeten`;
TRUNCATE TABLE planeten;

ALTER TABLE planeten ADD diameter INT;
ALTER TABLE planeten ADD afstand INT;
ALTER TABLE planeten ADD massa INT;

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