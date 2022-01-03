/* Write the CREATE TABLE statements for the assignments and a assignment_submissions tables. */

/* assignments */
CREATE TABLE assignments(
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(225),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

/* assignment_submissions */
CREATE TABLE assignment_submissions(
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);