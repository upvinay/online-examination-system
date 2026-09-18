create database onlineexam;
use  onlineexam;

CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);
 SELECT * FROM ADMINS;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reg_no VARCHAR(20) UNIQUE,
    name VARCHAR(100),
    father_name VARCHAR(100),
    mother_name VARCHAR(100),
    dob DATE,
    phone VARCHAR(15),
    email VARCHAR(100),
    aadhar VARCHAR(12),
    city VARCHAR(50),
    pin_code VARCHAR(6),
    state VARCHAR(50)
);

CREATE TABLE exams (
    exam_code VARCHAR(20) PRIMARY KEY,
    subject VARCHAR(100),
    duration INT,
    marks_per_question FLOAT,
    negative_marking FLOAT,
    full_marks INT,
    total_questions INT
);

SELECT  * FROM exams ;

UPDATE exams
SET duration = 5
WHERE exam_code = 'EXAM1791';



CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    exam_code VARCHAR(20),
    question_text TEXT,
    option_a VARCHAR(255),
    option_b VARCHAR(255),
    option_c VARCHAR(255),
    option_d VARCHAR(255),
    correct_answer CHAR(1)
);

select * FROM questions;
select * from students;


CREATE TABLE results (
    reg_no VARCHAR(20),
    exam_code VARCHAR(20),
    total_questions INT,
    attempted INT,
    correct INT,
    wrong INT,
    not_attempted INT,
    score FLOAT,
    full_marks FLOAT,
    PRIMARY KEY (reg_no, exam_code)
);

select * from results;
drop table results;

INSERT INTO results (reg_no, exam_code, total_questions, attempted, correct, wrong, not_attempted, score, full_marks)
VALUES ('BCA83456', 'EXAM1791', 100, 95, 88, 7, 5, 88.0, 100);



CREATE TABLE studentlogin (
    reg_no VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    exam_code VARCHAR(20)
);

select * from studentlogin;





CREATE TABLE student_answers (
    reg_no VARCHAR(14),
    exam_code VARCHAR(10),
    question_text text,
    selected_option VARCHAR(1)
   
);
drop table student_answers;
select * from student_answers;

DELETE FROM student_answers
WHERE reg_no = 'v' AND exam_code = 'EXAM1791';









INSERT INTO students (reg_no, name, father_name, mother_name, dob, phone, email, aadhar, city, pin_code, state) VALUES
('REG001', 'Ankit Sharma', 'Rajesh Sharma', 'Meena Sharma', '2000-05-12', '9876543210', 'ankit.sharma@example.com', '123456789012', 'Patna', '800001', 'Bihar'),
('REG002', 'Priya Verma', 'Suresh Verma', 'Kavita Verma', '1999-09-23', '9876543211', 'priya.verma@example.com', '123456789013', 'Gaya', '823001', 'Bihar'),
('REG003', 'Ravi Kumar', 'Akhil Kumar', 'Sunita Kumar', '2001-01-05', '9876543212', 'ravi.kumar@example.com', '123456789014', 'Muzaffarpur', '842001', 'Bihar'),
('REG004', 'Neha Singh', 'Pankaj Singh', 'Anita Singh', '2000-12-17', '9876543213', 'neha.singh@example.com', '123456789015', 'Patna', '800002', 'Bihar'),
('REG005', 'Vikram Yadav', 'Mahesh Yadav', 'Sarita Yadav', '1998-08-08', '9876543214', 'vikram.yadav@example.com', '123456789016', 'Bhagalpur', '812001', 'Bihar'),
('REG006', 'Anjali Kumari', 'Ramesh Kumar', 'Rita Kumari', '2002-03-19', '9876543215', 'anjali.kumari@example.com', '123456789017', 'Darbhanga', '846004', 'Bihar'),
('REG007', 'Manish Ranjan', 'Dinesh Ranjan', 'Geeta Ranjan', '2000-11-22', '9876543216', 'manish.ranjan@example.com', '123456789018', 'Purnea', '854301', 'Bihar'),
('REG008', 'Pooja Mishra', 'Ashok Mishra', 'Sudha Mishra', '1999-06-15', '9876543217', 'pooja.mishra@example.com', '123456789019', 'Katihar', '854105', 'Bihar'),
('REG009', 'Nikhil Raj', 'Satish Raj', 'Lata Raj', '2001-10-02', '9876543218', 'nikhil.raj@example.com', '123456789020', 'Begusarai', '851101', 'Bihar'),
('REG010', 'Sneha Sinha', 'Ajay Sinha', 'Kiran Sinha', '1999-12-30', '9876543219', 'sneha.sinha@example.com', '123456789021', 'Sasaram', '821115', 'Bihar'),
('REG011', 'Deepak Kumar', 'Brijesh Kumar', 'Komal Devi', '2000-07-07', '9876543220', 'deepak.kumar@example.com', '123456789022', 'Siwan', '841226', 'Bihar'),
('REG012', 'Kriti Jha', 'Niraj Jha', 'Sushma Jha', '2002-02-20', '9876543221', 'kriti.jha@example.com', '123456789023', 'Madhubani', '847211', 'Bihar'),
('REG013', 'Saurav Thakur', 'Ravi Thakur', 'Poonam Thakur', '2001-09-14', '9876543222', 'saurav.thakur@example.com', '123456789024', 'Buxar', '802101', 'Bihar'),
('REG014', 'Aditi Kumari', 'Hari Kumar', 'Devika Kumari', '2000-04-11', '9876543223', 'aditi.kumari@example.com', '123456789025', 'Aurangabad', '824101', 'Bihar'),
('REG015', 'Rohit Sinha', 'Sanjay Sinha', 'Rachna Sinha', '1998-03-25', '9876543224', 'rohit.sinha@example.com', '123456789026', 'Chapra', '841301', 'Bihar'),
('REG016', 'Divya Pandey', 'Rajiv Pandey', 'Smita Pandey', '2001-06-29', '9876543225', 'divya.pandey@example.com', '123456789027', 'Arrah', '802301', 'Bihar'),
('REG017', 'Aman Tiwari', 'Suraj Tiwari', 'Renu Tiwari', '2000-01-10', '9876543226', 'aman.tiwari@example.com', '123456789028', 'Motihari', '845401', 'Bihar'),
('REG018', 'Ritika Rani', 'Vijay Kumar', 'Anju Rani', '2002-08-19', '9876543227', 'ritika.rani@example.com', '123456789029', 'Sitamarhi', '843301', 'Bihar'),
('REG019', 'Arjun Das', 'Mohan Das', 'Kusum Das', '2001-05-05', '9876543228', 'arjun.das@example.com', '123456789030', 'Jehanabad', '804408', 'Bihar'),
('REG020', 'Shreya Raj', 'Naresh Raj', 'Rani Raj', '1999-10-18', '9876543229', 'shreya.raj@example.com', '123456789031', 'Nalanda', '803101', 'Bihar');





INSERT INTO questions (exam_code, question_text, option_a, option_b, option_c, option_d, correct_answer) VALUES
('EXAM1791', 'What does CPU stand for?', 'Central Processing Unit', 'Computer Personal Unit', 'Central Process Unit', 'Control Processing Unit', 'A'),
('EXAM1791', 'Which device is used to input data into a computer?', 'Monitor', 'Keyboard', 'Printer', 'Speaker', 'B'),
('EXAM1791', 'What does RAM stand for?', 'Read Access Memory', 'Random Access Memory', 'Run Accept Memory', 'Real Application Memory', 'B'),
('EXAM1791', 'Which part of the computer is considered its brain?', 'Hard Drive', 'CPU', 'RAM', 'Motherboard', 'B'),
('EXAM1791', 'What is the permanent storage device in a computer?', 'RAM', 'ROM', 'Hard Drive', 'Cache', 'C'),
('EXAM1791', 'Which operating system is developed by Microsoft?', 'Linux', 'macOS', 'Windows', 'Unix', 'C'),
('EXAM1791', 'Which of the following is NOT an input device?', 'Mouse', 'Scanner', 'Printer', 'Microphone', 'C'),
('EXAM1791', 'What does HTTP stand for?', 'HyperText Transfer Protocol', 'HyperText Transmission Program', 'HyperText Transfer Program', 'HyperText Transmission Protocol', 'A'),
('EXAM1791', 'Which programming language is primarily used for Android development?', 'Swift', 'Java', 'Kotlin', 'Python', 'C'),
('EXAM1791', 'What type of software controls hardware operations?', 'Application Software', 'System Software', 'Utility Software', 'Malware', 'B'),
('EXAM1791', 'What does GUI stand for?', 'Graphical User Interface', 'General User Interaction', 'Graphical User Interaction', 'General User Interface', 'A'),
('EXAM1791', 'Which device connects a computer to a network?', 'Router', 'Monitor', 'Printer', 'Modem', 'D'),
('EXAM1791', 'What is the full form of USB?', 'Universal Serial Bus', 'Uniform Serial Bus', 'Universal Service Bus', 'United Serial Bus', 'A'),
('EXAM1791', 'Which memory is volatile?', 'ROM', 'Cache', 'RAM', 'Hard Disk', 'C'),
('EXAM1791', 'What is software?', 'Physical components of a computer', 'Programs and data', 'Storage devices', 'Computer network', 'B'),
('EXAM1791', 'Which of the following is an example of an input device?', 'Monitor', 'Speaker', 'Mouse', 'Projector', 'C'),
('EXAM1791', 'Which one is NOT an Operating System?', 'Windows', 'Linux', 'Oracle', 'macOS', 'C'),
('EXAM1791', 'What is the main function of the ALU?', 'Store data', 'Perform arithmetic and logic operations', 'Control timing', 'Manage memory', 'B'),
('EXAM1791', 'Which of these is a high-level programming language?', 'Assembly', 'Machine code', 'Python', 'Binary code', 'C'),
('EXAM1791', 'What is the size of a byte?', '4 bits', '8 bits', '16 bits', '32 bits', 'B');




INSERT INTO questions (exam_code, question_text, option_a, option_b, option_c, option_d, correct_answer) VALUES
('EXAM1791', 'Which programming language is known as the backbone of Android development?', 'Python', 'C++', 'Java', 'Kotlin', 'D'),
('EXAM1791', 'Which of the following is NOT an operating system?', 'Linux', 'Windows', 'Oracle', 'macOS', 'C'),
('EXAM1791', 'Which computer memory is volatile?', 'ROM', 'Hard Disk', 'SSD', 'RAM', 'D'),
('EXAM1791', 'What does HTTP stand for?', 'Hyper Text Transfer Protocol', 'High Transfer Text Protocol', 'Hyperlink Text Transfer Program', 'Hyper Text Transfer Program', 'A'),
('EXAM1791', 'Which company developed the Windows operating system?', 'Apple', 'Microsoft', 'IBM', 'Google', 'B'),
('EXAM1791', 'What is the smallest unit of data in a computer?', 'Bit', 'Byte', 'Kilobyte', 'Nibble', 'A'),
('EXAM1791', 'Which part of the computer is considered the brain?', 'RAM', 'Hard Drive', 'CPU', 'Monitor', 'C'),
('EXAM1791', 'Which device is used to connect a computer to a network?', 'Router', 'Scanner', 'Printer', 'Monitor', 'A'),
('EXAM1791', 'Which of the following is an input device?', 'Monitor', 'Keyboard', 'Speaker', 'Projector', 'B'),
('EXAM1791', 'What does GUI stand for?', 'Graphical User Interface', 'Graph Use Interface', 'General Utility Interface', 'Graphical Uniform Interface', 'A'),
('EXAM1791', 'Which language is used for web development?', 'HTML', 'C', 'Python', 'Java', 'A'),
('EXAM1791', 'What is the function of an operating system?', 'Perform arithmetic', 'Manage hardware and software', 'Compile code', 'Browse internet', 'B'),
('EXAM1791', 'What type of software is MS Word?', 'System software', 'Utility software', 'Application software', 'Compiler', 'C'),
('EXAM1791', 'What does "www" stand for?', 'World Web Wide', 'Wide Web World', 'World Wide Web', 'Web Wide World' ,'C');