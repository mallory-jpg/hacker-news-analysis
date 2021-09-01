CREATE DATABASE hacker_news;

CREATE TABLE news(
    title TEXT,
    username TEXT,
    score INT,
    timestamp TEXT,
    url TEXT
);

-- insert csv info into postgresdb
COPY news(title, username, score, timestamp, url)
FROM '/Users/mallory/Desktop/DataEngineering/CodeAcademyProjects/SQL/HackerNews/hacker_news.csv'
DELIMITER ','
CSV HEADER;