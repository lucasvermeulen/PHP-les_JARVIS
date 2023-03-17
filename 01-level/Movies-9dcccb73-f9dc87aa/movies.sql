USE `netland`;


CREATE TABLE `films` (
	id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duur INT NOT NULL,
    datum date NULL,
    land VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    trailer VARCHAR(255) NOT NULL
);