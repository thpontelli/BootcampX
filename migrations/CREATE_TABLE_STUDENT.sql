CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,  -- A unique identifier
  name varchar(255) NOT NULL,     -- The name of the cohort
  start_date date,                -- The cohorts' start date
  end_date date                   -- The cohorts' end date
);


CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,  -- A unique identifier
  name varchar(255) NOT NULL,     -- The full name of the student
  email varchar(255),             -- The students' email address
  phone varchar(255),              -- The students' phone number
  github varchar(255),            -- The students' github profile url
  start_date date,                -- The students' start date of the Bootcamp
  end_date date,                  -- The students' end date of the Bootcamp
  cohort_id integer               -- The id of the cohort that the student is enrolled in
    REFERENCES cohorts(id) ON DELETE CASCADE
);

