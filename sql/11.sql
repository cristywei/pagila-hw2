/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */
SELECT t.first_name || ' ' || t.last_name AS "Actor Name"
FROM (
    SELECT UNNEST(special_features) AS special_feature, first_name, last_name
    FROM film
    JOIN film_actor USING (film_id)
    JOIN actor USING (actor_id)
) t
WHERE special_feature='Behind the Scenes'
GROUP BY "Actor Name"
ORDER BY "Actor Name";
