-- find popular stories
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;