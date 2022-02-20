/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */
SELECT t1.title
FROM (
    SELECT UNNEST(special_features) AS sf1, film.title
    FROM film
) t1
JOIN (
    SELECT UNNEST(special_features) AS sf2, film.title
    FROM film
) t2 ON (t1.title = t2.title)
WHERE sf1 = 'Behind the Scenes' AND sf2 = 'Trailers'
GROUP BY t1.title
ORDER BY t1.title;
    
