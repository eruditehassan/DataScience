-- 1. take a look at the startups table:
SELECT COUNT(*) AS 'Total number of companies' 
FROM startups;

-- 2.Calculate the total number of companies in the table.
SELECT sum(valuation) AS 'Total value of all companies' 
FROM startups;

-- 3. We want to know the total value of all companies in this table.
SELECT max(raised) AS 'Highest amount raised' 
FROM startups;

-- 4. What is the highest amount raised by a startup?
SELECT max(raised) AS 'Highest amount raised' 
FROM startups 
WHERE stage='Seed';

-- 5. Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage.
SELECT min(founded) 
FROM startups;

-- 6. In what year was the oldest company on the list founded?
SELECT avg(valuation) AS 'Average Valuation' 
FROM startups;

-- 7. Return the average valuation.
SELECT category,round(avg(valuation),2) AS 'Average Valuation' 
FROM startups 
GROUP BY 1;

-- 8. Return the average valuation, in each category.
SELECT category,round(avg(valuation),2) AS 'Average Valuation' 
FROM startups 
GROUP BY 1 
ORDER BY 2 DESC;

-- 9. Return the average valuation, in each category. Round the averages to two decimal places.
SELECT category,COUNT(*) AS 'Number of companies' 
FROM startups 
GROUP BY 1;

-- 10. Return the average valuation, in each category. 
SELECT category,COUNT(*) AS 'Number of companies' 
FROM startups 
GROUP BY 1 
HAVING count(*) > 3;

-- 11. return the name of each category with the total number of companies that belong to it. Filter the result to only include categories that have more than three companies in them.
SELECT location,avg(employees) AS 'Average Size' 
FROM startups 
GROUP BY 1 
HAVING avg(employees) > 500;