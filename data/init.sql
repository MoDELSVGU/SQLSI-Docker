USE sqlsi2021;
CREATE TABLE Lecturer (Lecturer_id VARCHAR (100) NOT NULL PRIMARY KEY, name VARCHAR(100) UNIQUE, email VARCHAR (100) UNIQUE);
CREATE TABLE Student (Student_id VARCHAR (100) NOT NULL PRIMARY KEY, name VARCHAR(100) UNIQUE, email VARCHAR (100) UNIQUE);
CREATE TABLE Enrollment (lecturers VARCHAR (100), students VARCHAR (100));
ALTER TABLE Enrollment ADD FOREIGN KEY (lecturers) REFERENCES Lecturer (Lecturer_id), ADD FOREIGN KEY (students) REFERENCES Student (Student_id);
DROP PROCEDURE IF EXISTS getVGU2;
DELIMITER //
CREATE PROCEDURE getVGU2()
BEGIN
DELETE FROM Enrollment;
DELETE FROM Lecturer;
DELETE FROM Student;
INSERT INTO Student (student_id, name, email) VALUES 
('Hoang', 'Hoang', 'hoang@vgu.edu.vn'),
('Chau', 'Chau', 'chau@vgu.edu.vn'),
('An', 'An', 'an@vgu.edu.vn'),
('Thanh', 'Thanh', 'thanh@vgu.edu.vn'),
('Nam', 'Nam', 'nam@vgu.edu.vn');

INSERT INTO Lecturer (lecturer_id, name, email) VALUES
('Manuel', 'Manuel', 'Manuel@vgu.edu.vn'),
('Huong', 'Huong', 'Huong@vgu.edu.vn'),
('Hieu', 'Hieu', 'Hieu@vgu.edu.vn');

INSERT INTO Enrollment (students, lecturers) VALUES
('Hoang', 'Manuel'),
('Chau', 'Manuel'),
('An', 'Manuel'),
('Chau', 'Huong'),
('Thanh', 'Huong'),
('Thanh', 'Hieu'),
('Nam', 'Hieu');

END //

DELIMITER ;
CALL getVGU2();