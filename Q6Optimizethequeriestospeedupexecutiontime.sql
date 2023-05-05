/* To optimize the following query, I will create an index on the latitude and longitude columns */

SELECT *
FROM earthq
WHERE latitude > 30 AND longitude < -100
ORDER BY mag DESC
LIMIT 10

/* This index helps the database quickly find earthquake data that matches the query condition of latitude > 30 and longitude < -100 */
