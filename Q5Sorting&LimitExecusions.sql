/* This query selects all columns from the earthq table, sorts the results in descending order of earthquake magnitude, and limits the number of results returned to 10. */

SELECT *
FROM earthq
ORDER BY mag DESC
LIMIT 10;


