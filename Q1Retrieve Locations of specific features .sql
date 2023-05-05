/* Using SQL, retrieve name of place, latitude, and longitude where the magnitude of earthquake is greater than 4.5 and the depth is greater than 10 */

/* There is a total of 195 rows with information */

SELECT place, latitude, longitude, depth
FROM earthq
WHERE mag > 4.5 AND depth > 10;
