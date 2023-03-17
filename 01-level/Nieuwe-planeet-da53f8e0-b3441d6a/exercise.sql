ALTER TABLE planeten ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
-- id hoeft niet in het rijtje van veldnamen te staan; verhoogt na namelijk automatisch de waarde die erin komt te staan t.o.v. de vorige
INSERT INTO sterrenstelsel.planeten 
(naam, diameter, afstand, massa, bezoekdatum, id)
VALUES ('Mars', 6794, 227936640, 0, null, null);