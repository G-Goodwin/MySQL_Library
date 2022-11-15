/* Group 7 INST 327-0201 Views/Queries*/ 

USE lib_project;
# 1 searches for history books focusing on the region of Asia
USE lib_project;
CREATE OR REPLACE VIEW asian_history_books AS
    SELECT title, CONCAT(author_fname, " ", author_lname) AS "author", 
		country_name, CONCAT(course_code, " ", course_number) AS "course", course_description
    FROM books
    JOIN regions ON books.region_id = regions.region_id
    JOIN countries ON books.country_id = countries.country_id
    JOIN courses ON books.course_id = courses.course_id
    WHERE region_name = "Asia"
    ORDER BY author_fname, author_lname;

# 2 searches for books in a language other than english
USE lib_project;
CREATE OR REPLACE VIEW not_in_english AS
    SELECT books.title, CONCAT(books.author_fname, " ", books.author_lname) AS "author", languages.language, countries.country_name
    FROM books 
    JOIN languages USING(language_id)
    JOIN countries USING(country_id) 
    WHERE books.language_id != 1
    ORDER BY title;

# 3 creates a results set of the most popular (accessed) books
USE lib_project;
CREATE OR REPLACE VIEW most_accessed AS
    SELECT title, CONCAT(author_fname, " ", author_lname) AS author, 
		COUNT(access_records.book_id) AS num_accessed, COUNT(person_id) AS num_accessorss
    FROM books
    JOIN access_records USING(book_id) 
    JOIN people USING(person_id)
    GROUP BY title, author 
    ORDER BY num_accessed DESC, title, author; 

# 4 finds books that have a greater than average number of pages
USE lib_project;
CREATE OR REPLACE VIEW long_reads_US AS
    SELECT title, author_fname, author_lname, num_pg
     FROM books 
     WHERE num_pg >
(
	SELECT AVG(num_pg)
	FROM books
)
AND
Country_id = 1
     ORDER BY num_pg;

# 5 finds what books have been accessed in the last two years, the dates of use, and who accessed them
USE lib_project;
CREATE OR REPLACE VIEW accessed_since_2020 AS
	SELECT title, CONCAT(fname,' ', lname) AS name, start_time AS checkout_date, end_time AS return_date
	FROM people 
		JOIN access_records USING(person_id) 
		JOIN books USING(book_id) 
	WHERE end_time > '2020-01-01 00:00:00'
	ORDER BY return_date, title, name;

# extra views that are NOT part of the 5 for grading purposes! 
# finds books that are less than the average number of pages
USE lib_project;
CREATE OR REPLACE VIEW short_read_US AS
    SELECT title,author_fname,author_lname
     FROM books 
     WHERE num_pg < 
(
	SELECT AVG(num_pg)
	FROM books
)
AND
Country_id = 1
     ORDER BY num_pg;
     
# finds book titles checked out by a patron until after a date/time 
USE library_project; 
CREATE OR REPLACE VIEW checked_out_until AS
SELECT title, CONCAT(fname,' ', lname) AS patron, start_time AS checkout_date, end_time AS return_date
FROM people 
    JOIN access_records USING(person_id)  
    JOIN books USING(book_id) 
WHERE end_time > '2021-01-01 00:00:00'
ORDER BY lname;



