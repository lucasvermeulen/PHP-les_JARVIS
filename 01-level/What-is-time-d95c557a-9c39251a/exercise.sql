SELECT * FROM `planeten`;

ALTER TABLE planeten
    MODIFY COLUMN naam varchar(255) NOT NULL,
    MODIFY COLUMN diameter varchar(255) NOT NULL,
    MODIFY COLUMN afstand varchar(255) NOT NULL,
    MODIFY COLUMN massa varchar(255) NOT NULL,
    ADD COLUMN bezoerdatum DATE NULL;
