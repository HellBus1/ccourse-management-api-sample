CREATE TABLE university (
    id BIGINT PRIMARY KEY,
    name VARCHAR,
    city VARCHAR,
    description TEXT
);

CREATE TABLE student (
    id BIGINT PRIMARY KEY,
    name VARCHAR,
    age INT,
    university_id BIGINT REFERENCES university(id),
    address VARCHAR,
    telephone VARCHAR
);

CREATE TABLE course (
    id BIGINT PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE university_course (
    id BIGINT PRIMARY KEY,
    university_id BIGINT REFERENCES university(id),
    course_id BIGINT REFERENCES course(id)
);

CREATE TABLE student_course (
    student_id BIGINT,
    course_taken_id BIGINT,
    PRIMARY KEY (student_id, course_taken_id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_taken_id) REFERENCES university_course(id)
);