SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) AS average_rating
FROM properties
LEFT JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE city LIKE '%Vancouv%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
