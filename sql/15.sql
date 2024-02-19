/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT name, count(name) as sum
FROM category
JOIN film_category USING (category_id)
JOIN film USING (film_id)
GROUP BY name
ORDER BY name;
