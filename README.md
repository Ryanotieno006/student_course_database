# Student Course Enrollment Database

This is a beginner-level SQL project that simulates a basic student-course enrollment system. It involves the creation of relational database tables for students, courses, and enrollments, along with sample data and several SQL queries for learning and practice purposes.

## 📁 Project Structure

The project contains the following components:

- **Tables**:
  - `Students`: Stores student information, including their name, email, and enrollment date.
  - `Courses`: Stores course details, such as course name and description.
  - `Enrollments`: Connects students with their enrolled courses, along with the enrollment date.

- **Queries**:
  - Basic `SELECT` queries to retrieve all data from `Students`, `Courses`, and `Enrollments`.
  - `JOIN` operations to combine data from multiple tables and view student enrollments for specific courses.
  - Aggregation query using `COUNT()` to count how many students are enrolled in each course.

## 🛠️ SQL Queries

1. **Table Creation**:
   - Create tables for `Students`, `Courses`, and `Enrollments` with necessary constraints, including `PRIMARY KEY`, `FOREIGN KEY`, and `AUTO_INCREMENT`.

2. **Inserting Data**:
   - Sample data inserted into each table to represent students, courses, and enrollments.

3. **Data Retrieval**:
   - `SELECT *` queries to retrieve all data from the `Students`, `Courses`, and `Enrollments` tables.

4. **JOIN Queries**:
   - Retrieve a list of students with their enrolled courses, including the `JOIN` between `Students`, `Courses`, and `Enrollments`.

5. **Filtering**:
   - Retrieve courses that a specific student (e.g., Alice) is enrolled in using the `WHERE` clause.

6. **Aggregation**:
   - Count the number of students enrolled in each course using the `COUNT()` function with a `LEFT JOIN`.
     
