/* Some techniques are minimizing the number of joins, using appropriate index, using limited subqueries, avoid using functions in WHERE clauses. */

SELECT place, mag
FROM earthq
WHERE latitude > 30 AND longitude < -100
  AND mag < 6.0
ORDER BY mag DESC
LIMIT 100;

/* This index can help the database to find and retrieve earthquake data that matches the query condition of latitude > 30, longitude < -100, mag > 6.0, which can improve query performance. */



