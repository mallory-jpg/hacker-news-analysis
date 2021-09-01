-- categorize stories based on source
SELECT CASE
  WHEN url LIKE '%github%' THEN 'GitHub'
  WHEN url like '%medium.com%' THEN 'Medium'
  WHEN url like '%nytimes.com%' THEN 'NY Times'
  ELSE 'Other'
  END AS 'Source',
  COUNT(*) -- which sources feed hacknews site?
FROM hacker_news
GROUP BY 1;
