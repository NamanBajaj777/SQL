CREATE TABLE student(
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    mentor_name VARCHAR(20),
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id),
    FOREIGN KEY(mentor_name) REFERENCES mentor(_name)
);

CREATE TABLE mentor(
    mentor_id INT,
    _name VARCHAR(20) UNIQUE NOT NULL,
    PRIMARY KEY(_name)
);

DROP TABLE mentor;

INSERT INTO student(name,mentor_name,major) VALUES('Wolfgang Grimmer', 'Heinrech Lunge' , 'Chemistry');
INSERT INTO student(name,mentor_name,major) VALUES('Johan Liebert', 'Heinrech Lunge', 'Mathematics');
INSERT INTO student(name,mentor_name,major) VALUES('Nina Fortner', 'Claudia Tiedamann', 'Humanities');
INSERT INTO student(name,mentor_name,major) VALUES('Kenzou Tenma', 'Claudia Tiedamann', 'Biology');
INSERT INTO student(name,mentor_name,major) VALUES('Eva Hienemann', 'Heinrech Lunge', 'Economics');

INSERT INTO mentor(mentor_id,_name) VALUES(101,'Heinrech Lunge');
INSERT INTO mentor(mentor_id,_name) VALUES(491,'Claudia Tiedamann');


SELECT * 
FROM student
ORDER BY mentor_name;

SELECT *
FROM mentor;
