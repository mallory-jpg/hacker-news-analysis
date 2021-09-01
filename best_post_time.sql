
-- update SQLite table from date to text to Postgres format
ALTER TABLE news
ALTER COLUMN timestamp TYPE TEXT;

-- had to do this in SQLite instead of Postgres due to lack of support fot ANSI timestamp literals 
SELECT timestamp,
  strftime('%H', timestamp)
FROM news
GROUP BY 1
LIMIT 20;

SELECT strftime('%H', timestamp) AS 'hour',
  ROUND(AVG(score)) AS 'avg score',
  COUNT(*)
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 1;

