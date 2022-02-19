/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */
SELECT title FROM (
    SELECT title, rating, UNNEST(special_features) AS special_feature
    FROM film) t
WHERE special_feature='Trailers' and rating='G'
ORDER BY title;
