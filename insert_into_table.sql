CREATE TABLE student (

student_id INT IDENTITY(1,1),
name VARCHAR(20),
major VARCHAR(20) DEFAULT 'undecided',
PRIMARY KEY(student_id)

);







INSERT INTO student VALUES('Kate', 'Sociology')
INSERT INTO student VALUES('Jack', 'Biology')
INSERT INTO student(name) VALUES('Ridwan');


SELECT * FROM student;

--DROP TABLE student;