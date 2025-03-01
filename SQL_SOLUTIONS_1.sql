-- Count total rows in the movies table
SELECT COUNT(*) AS total_rows 
FROM Movies;
-- 9742 ROWS

-- Count distinct movie titles
SELECT COUNT(DISTINCT title) AS distinct_movies 
FROM Movies;
-- 9737 Movies

-- Count movies with "1996" in the title
SELECT COUNT(*) 
FROM Movies 
WHERE title LIKE '%1996%';
-- 276 Movies

-- Attempt to count movies with years 2000, 2001, or 2002 in the title
-- The original query was incorrect. LIKE should be used instead of IN
SELECT COUNT(*) 
FROM Movies 
WHERE title LIKE '%2000%' 
   OR title LIKE '%2001%' 
   OR title LIKE '%2002%';
-- Ensures correct filtering of movie titles with those years

-- Retrieve all movies with "Harry" in the title
SELECT title 
FROM Movies 
WHERE title LIKE '%Harry%';
-- Listed below when executing the code

-- Create a new table Movies1 with a category column based on genre
CREATE TABLE Movies1 AS
SELECT 
    movieID,
    title,
    genres,
    CASE 
        WHEN genres = 'Comedy' THEN 'Funny'
        WHEN genres IN ('Thriller', 'Horror') THEN 'Scary'
        ELSE NULL
    END AS category
FROM Movies;

-- Display the contents of Movies1
SELECT * 
FROM Movies1;

-- Count movies categorized as Funny or Scary in Movies1
SELECT COUNT(*) 
FROM Movies1 
WHERE category IN ('Funny', 'Scary', 'funny', 'scary');
-- 1197 Movies

-- Create Movies2 table with expanded categorization based on genres
CREATE TABLE Movies2 AS
SELECT 
    *,
    CASE 
        WHEN genres LIKE '%Comedy%' AND (genres LIKE '%Horror%' OR genres LIKE '%Thriller%') THEN 'Scary and Funny'
        WHEN genres LIKE '%Comedy%' THEN 'Funny'
        WHEN genres LIKE '%Horror%' OR genres LIKE '%Thriller%' THEN 'Scary'
        ELSE NULL
    END AS category
FROM Movies;

-- Display the contents of Movies2
SELECT * 
FROM Movies2;
