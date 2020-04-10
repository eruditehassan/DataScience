-- 1. Start by getting a feel for the hacker_news table!
SELECT title,score 
FROM hacker_news 
ORDER BY score DESC 
LIMIT 5;

-- 2. Is a small percentage of Hacker News submitters taking the majority of the points?
SELECT sum(score) AS 'Total Score' 
FROM hacker_news;

-- 3. Find the individual users who have gotten combined scores of more than 200, and their combined scores
SELECT user,sum(score) AS 'User Score' 
FROM hacker_news 
GROUP BY 1 
HAVING sum(score) > 200;

-- 4. Then, we want to add these users’ scores together and divide by the total to get the percentage.
SELECT (517 + 309 + 304 + 282) / 6366.0;

-- 5. The url of the video is:
-- https://www.youtube.com/watch?v=dQw4w9WgXcQ
--How many times has each offending user posted this link?
SELECT user,COUNT(*) AS 'Number of time posted' 
FROM hacker_news 
WHERE url LIKE '%youtube.com/watch?v=dQw4w9WgXcQ' 
GROUP BY 1;

-- 6. Which of these sites feed Hacker News the most: GitHub, Medium, or New York Times?
SELECT CASE 
  WHEN url LIKE '%github.com%' THEN 'GitHub'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Others'
  END AS 'Source', 
  COUNT(*) AS 'Occourances'
  FROM hacker_news 
  GROUP BY 1;

-- 7. Next, build on the previous query: Add a column for the number of stories from each URL using COUNT().
SELECT timestamp 
FROM hacker_news 
LIMIT 10;
  
-- 8. What’s the best time of the day to post a story on Hacker News?
SELECT timestamp, 
strftime('%H',timestamp) 
FROM hacker_news 
GROUP BY 1 
LIMIT 20;

-- 9,10,11. Let’s write a query that returns three columns:
--    The hours of the timestamp
--    The average score for each hour
--    The count of stories for each hour

SELECT strftime('%H',timestamp),
round(avg(score),1) AS 'Average score', 
COUNT(*) AS 'Number of stories' 
FROM hacker_news 
GROUP BY 1 
ORDER BY 2 DESC; 
  
  