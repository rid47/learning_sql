EXEC sp_columns student; -- meta data about table
EXEC sp_help student; -- more meta data about table

CREATE TABLE student(

student_id BIGINT PRIMARY KEY,
name VARCHAR(48),
major VARCHAR(20)

); -- create table

ALTER TABLE student ADD gpa DECIMAL(3,2); -- add column in a table
ALTER TABLE student DROP COLUMN gpa; -- drop column in a table


DROP TABLE student; -- drop table

