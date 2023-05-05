/* To calculate certain areas of interest, we can use GROUP BY clause to group the earthquakes by their location, and then aggregate the results to calculate the total number of earthquakes and the average magnitude in each location. If we modify this query, we can add a HAVING clause to filter the results to only include locations with a certain number of earthquakes or a minimum average magnitude.*/

/* In the next example, we will filter the results to only include locations with at least 10 earthquakes in descending order*/

SELECT place, COUNT(*) as num_earthquakes, AVG(mag) as avg_magnitude
FROM earthq
GROUP BY place
HAVING COUNT(*) >= 10
ORDER BY num_earthquakes DESC;




