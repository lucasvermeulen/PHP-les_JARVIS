SELECT * FROM series;

SELECT 
    rating
FROM
    series
WHERE
    rating > 2.5
ORDER BY rating ASC;

SELECT 
    seasons
FROM
    series
WHERE
    seasons < 5
ORDER BY rating DESC;   

SELECT 
    seasons,
    country
FROM
    series
WHERE
    seasons < 3 AND
    seasons > 20
ORDER BY 
   seasons ASC, 
   country ASC;