/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically by the special_features
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */
SELECT special_features, COUNT(title)
FROM (
    SELECT title, UNNEST(special_features) AS special_features
    FROM film) t
GROUP BY special_features
ORDER BY special_features;
