CREATE TABLE Students(
student_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50),
email VARCHAR(100) UNIQUE NOT NULL,
enrollment_date DATE
);

CREATE TABLE Courses(
course_id INT AUTO_INCREMENT PRIMARY KEY,
course_name VARCHAR(100),
course_description TEXT
);

CREATE TABLE Enrollments(
enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT,
course_id INT,
enrollment_date DATE,
FOREIGN KEY (student_id) REFERENCES Students(student_id),
FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students (first_name, last_name, email, enrollment_date)
VALUES
('Alice', 'Johnson', 'alice@gmail.com', '2024-01-10'),
('Bob', 'Smith', 'bob@gmail.com', '2024-01-15'),
('Catherine', 'Lee', 'catherine@gmail.com', '2024-02-01');

INSERT INTO Courses (course_name, course_description)
VALUES
('Database fundamentals', 'Learn the basics of relational databases'),
('Web Development', 'Introduction to HTML, CSS, and Javascript'),
('Data Analysis', 'Learn to analyze data using SQL and Excel');

INSERT INTO Enrollments(student_id, course_id, enrollment_date)
VALUES
(1, 1, '2024-01-20'),
(2, 2, '2024-01-22'),
(3, 1, '2024-02-05'),
(3, 3, '2024-02-10');

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;

SELECT s.first_name, s.last_name, c.course_name, e.enrollment_date
FROM Enrollments e
JOIN Students s ON e.student_id=s.student_id
JOIN Courses c ON e.course_id=c.course_id; 

SELECT s.first_name, s.last_name, c.course_name
FROM Enrollments e
JOIN Students s ON e.student_id=s.student_id
JOIN Courses c ON e.course_id=c.course_id
WHERE s.first_name='Alice';

SELECT c.course_name,
COUNT(e.student_id) AS number_of_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id=e.course_id
GROUP BY c.course_name;


