
SELECT *
FROM List_of_companies_of_Turkey$


-- Organize the city names

SELECT Headquarters
FROM List_of_companies_of_Turkey$
GROUP BY Headquarters

UPDATE List_of_companies_of_Turkey$
SET Headquarters = 'Ankara'
WHERE Headquarters = 'Ankara[8]'

UPDATE List_of_companies_of_Turkey$
SET Headquarters = 'Istanbul'
WHERE Headquarters = 'Istanbul[7]'


-- Company count by sector


SELECT Count(Sector), Sector
FROM List_of_companies_of_Turkey$
GROUP BY Sector


-- Company count by industry

SELECT COUNT(DISTINCT(Name)), Industry
FROM List_of_companies_of_Turkey$
GROUP BY Industry


-- Company count by city 

SELECT COUNT(DISTINCT(Name)), Headquarters
FROM List_of_companies_of_Turkey$
GROUP BY Headquarters

-- Timeline

SELECT COUNT(DISTINCT(Name)), Founded
FROM List_of_companies_of_Turkey$
GROUP BY Founded

