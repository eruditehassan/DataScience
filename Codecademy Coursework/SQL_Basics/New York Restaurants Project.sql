#1 Start by getting a feel for the nomnom table
SELECT *
FROM nomnom;

#2 What are the distinct neighborhoods?
SELECT DISTINCT neighborhood
FROM nomnom;

#3 What are the distinct cuisine types?
SELECT DISTINCT cuisine
FROM nomnom;

#4 Suppose we would like some Chinese takeout. What are our options?
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

#5 Return all the restaurants with reviews of 4 and above
SELECT *
FROM nomnom
WHERE review >= 4;

#6 Suppose Abbi and Ilana want to have a fancy dinner date. Return all the restaurants that are Italian and $$$.
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price = '$$$';

#7 Your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘meatball’ in it. Can you find it for him using a query?
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

#8 Let’s order delivery to the house! Find all the close by spots in Midtown, Downtown or Chinatown
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown'; 

#9 Find all the health grade pending restaurants (empty values).
SELECT *
FROM nomnom
WHERE health IS NULL;

#10 Create a Top 10 Restaurants Ranking based on reviews.
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

#11 Use a CASE statement to change the rating system
select Case
  when review>4.5 then 'Extraordinary'
  when review > 4 then 'Excellent'
  when review > 3 then 'Good'
  when review > 2 then 'Fair'
  end as 'Rating' from nomnom
  ;