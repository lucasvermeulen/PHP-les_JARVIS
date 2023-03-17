SELECT * FROM series;

SELECT 
    has_won_awards
FROM
    series
WHERE
    has_won_awards > 0;
    
SELECT 
    rating
FROM
    series
WHERE
    rating > 2.5;

SELECT 
    country,
    language
FROM
	series
WHERE
	country = 'NL' AND
    language = 'NL';
SELECT 
    seasons
FROM
    series
WHERE
    seasons < 5;

SELECT 
    rating
FROM
    series
ORDER BY rating;

SELECT 
    seasons
FROM
    series
WHERE
    seasons < 3 AND
    seasons > 20;
SELECT 
    title
FROM
    series
WHERE
    title LIKE '%th';
SELECT 
    seasons
FROM
    series
WHERE
    seasons != 3;