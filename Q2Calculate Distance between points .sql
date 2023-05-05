/* We can join the earth table I created with a table containing the coordinates of the second point, and then use the Haversine formula to calculate the distance */

/*The haversine formula determines the distance between two points on a sphere given their longitudes and latitudes.*/

SELECT e.id, e.place, e.latitude, e.longitude, e.mag, e.time, e.depth, 
6371 * 2 * ASIN(SQRT(POWER(SIN((abs(s.lat) - abs(e.latitude)) * pi()/180 / 2), 2) + COS(abs(e.latitude) * pi()/180) * COS(abs(s.lat) * pi()/180) * POWER(SIN((abs(s.lon) - abs(e.longitude)) * pi()/180 / 2), 2))) as distance
FROM earthq e
JOIN (SELECT 40.7128 as lat, -74.0060 as lon) s
ON 1=1;

/* This query calculates the distance between each earthquake location in the earthq table I created and the point with the latitude 41.0965° and longitude 
-73.9729, which corresponds to the location of West Nyack, NY. The query also includes other columns like, id, place, mag, time, and depth*/

/* The ON clause matches every row in the earthq table with the single row in the subquery because we are not joining on any common columns */
