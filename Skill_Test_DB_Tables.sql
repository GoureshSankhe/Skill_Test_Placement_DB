-- SKILL test Assignment 
-- Name:- Gouresh Sankhe
-- email:- sankhegouresh@gmail.com


-- Creation of database

CREATE DATABASE PlacementDB;

USE PlacementDB;

-- Creating tables as per the CSV file sheets

CREATE TABLE Enrolments
(
    EnrolmentID VARCHAR(30) PRIMARY KEY,

    EnrolmentOwner VARCHAR(100),

    EnrolmentName VARCHAR(150),

    FirstName VARCHAR(50),

    LastName VARCHAR(50),

    Email VARCHAR(150),

    BatchName VARCHAR(100),

    Stage VARCHAR(100),

    CandidateID VARCHAR(30),

    CreatedTime DATETIME,

    JobRolePreference2 VARCHAR(100),

    JobRolePreference1 VARCHAR(100),

    KnockedOffReason VARCHAR(200),

    OnHoldReason VARCHAR(200),

    CourseName VARCHAR(150),

    PreferredJobType VARCHAR(100),

    ExpectedSalary DECIMAL(12,2),

    CollegeName VARCHAR(200),

    Degree VARCHAR(100),

    GraduationYear varchar(50)
);



CREATE TABLE Candidates
(
    CandidateID VARCHAR(30) PRIMARY KEY,

    FirstName VARCHAR(50),

    LastName VARCHAR(50),

    PhoneNumber VARCHAR(20),

    Email VARCHAR(150),

    City VARCHAR(100),

    Province VARCHAR(100),

    Country VARCHAR(100),

    SkillSet TEXT,

    CandidateStage VARCHAR(100),

    BatchName VARCHAR(100),

    Age INT,

    PreferredJobLocation VARCHAR(100),

    Gender VARCHAR(20),

    PersonalStrengthArea2 VARCHAR(150),

    PersonalStrengthArea1 VARCHAR(150)
);


CREATE TABLE JobOpenings
(
    JobOpeningID VARCHAR(30) PRIMARY KEY,

    AccountManager VARCHAR(100),

    JobType VARCHAR(100),

    PostingTitle VARCHAR(150),

    JobOpeningStatus VARCHAR(100),

    DateOpened DATE,

    City VARCHAR(100),

    Province VARCHAR(100),

    Country VARCHAR(100),

    CreatedTime DATETIME,

    Salary DECIMAL(12,2),

    Profile TEXT
);

CREATE TABLE Applications
(
    ApplicationID VARCHAR(30) PRIMARY KEY,

    CandidateID VARCHAR(30),

    JobOpeningID VARCHAR(30),

    FirstName VARCHAR(50),

    LastName VARCHAR(50),

    Email VARCHAR(150),

    Phone VARCHAR(20),

    PostingTitle VARCHAR(150),

    ApplicationStage VARCHAR(100),

    ApplicationStatus VARCHAR(100),

    CreatedTime DATETIME,

    BatchName VARCHAR(100),

    FOREIGN KEY (CandidateID)
    REFERENCES Candidates(CandidateID),

    FOREIGN KEY (JobOpeningID)
    REFERENCES JobOpenings(JobOpeningID)
);

CREATE TABLE Interviews
(
    InterviewID VARCHAR(30) PRIMARY KEY,

    InterviewName VARCHAR(150),

    InterviewOwnerID VARCHAR(50),

    ClientID VARCHAR(50),

    CandidateID VARCHAR(30),

    JobOpeningID VARCHAR(30),

    ApplicationID VARCHAR(30),

    InterviewFrom DATETIME,

    InterviewTo DATETIME,

    InterviewType VARCHAR(100),

    InterviewStatus VARCHAR(100),

    BatchName VARCHAR(100),

    CancellationReason VARCHAR(200),

    Feedback TEXT,

    CreatedTime DATETIME,

    FOREIGN KEY (CandidateID)
    REFERENCES Candidates(CandidateID),

    FOREIGN KEY (JobOpeningID)
    REFERENCES JobOpenings(JobOpeningID),

    FOREIGN KEY (ApplicationID)
    REFERENCES Applications(ApplicationID)
);
DROP TABLE enrolments;

commit;

select * from enrolments;


INSERT INTO Enrolments (EnrolmentID, EnrolmentOwner, EnrolmentName, FirstName, LastName, Email, BatchName, Stage, CandidateID, CreatedTime, JobRolePreference2, JobRolePreference1, KnockedOffReason, OnHoldReason, CourseName, PreferredJobType, ExpectedSalary, CollegeName, Degree, GraduationYear) VALUES
('zcrm_889048000017058758', 'Criselle', 'Oliver Smith -  ODMC  - 16148', 'Oliver', 'Smith', 'abc1@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Knocked Off', NULL, '2025-08-23 06:52:12', NULL, NULL, 'Health / Personal Reason', NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, NULL, 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000017058759', 'Criselle', 'Emma Johnson -  ODMC  - 16149', 'Emma', 'Johnson', 'abc2@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Outreach Initiated', '1.599410000072583e+17', '2025-08-23 06:52:12', 'Social Media Marketing (Sponsored Ads)', 'Performance Marketing', NULL, NULL, 'Advanced Certification in Digital Marketing', 'Full Time', NULL, 'Manav Bharti University', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000017058760', 'Criselle', 'Liam Williams -  ODMC  - 16150', 'Liam', 'Williams', 'abc3@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Knocked Off', NULL, '2025-08-23 06:52:12', NULL, NULL, 'No Response', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'SVKM''s NMIMS', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000017058761', 'Criselle', 'Ava Brown -  ODMC  - 16151', 'Ava', 'Brown', 'abc4@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Hired', '1.599410000088042e+17', '2025-08-23 06:52:12', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, NULL, NULL, NULL),
('zcrm_889048000017058764', 'Criselle', 'Noah Jones -  ODMC  - 16154', 'Noah', 'Jones', 'abc5@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Not Eligible for Placement Outreach', NULL, '2025-08-23 06:52:12', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'Sd jain', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000017058765', 'Criselle', 'Sophia Garcia -  ODMC  - 16155', 'Sophia', 'Garcia', 'abc6@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Knocked Off', NULL, '2025-08-23 06:52:12', NULL, NULL, 'Dropout', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'St. Aloysius College, Jabalpur', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000017058766', 'Criselle', 'Jackson Miller -  ODMC  - 16156', 'Jackson', 'Miller', 'abc7@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'On Hold', NULL, '2025-08-23 06:52:12', NULL, NULL, NULL, 'Personal/Family Reason', 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, 'Institute of Management and Computer Studies', 'Bachelor of Management Studies (BMS)', NULL),
('zcrm_889048000017058767', 'Criselle', 'Lucas Davis -  ODMC  - 16157', 'Lucas', 'Davis', 'abc8@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Knocked Off', NULL, '2025-08-23 06:52:12', NULL, NULL, 'Dropout', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'SVKM''s NMIMS', 'Bachelor of Computer Applications (BCA)', NULL),
('zcrm_889048000017058768', 'Criselle', 'Mia Rodriguez -  ODMC  - 16158', 'Mia', 'Rodriguez', 'abc9@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Knocked Off', NULL, '2025-08-23 06:52:12', NULL, NULL, 'No Response', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000017058769', 'Criselle', 'Benjamin Martinez -  ODMC  - 16159', 'Benjamin', 'Martinez', 'abc10@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Outreach Initiated', '1.5994100000865328e+17', '2025-08-23 06:52:12', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Hindustan institute of Management and computer studies', 'Bachelor of Computer Applications (BCA)', NULL),
('zcrm_889048000017058770', 'Criselle', 'Charlotte Hernandez -  ODMC  - 16160', 'Charlotte', 'Hernandez', 'abc11@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'On Hold', NULL, '2025-08-23 06:52:12', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', 'Internship', NULL, 'Malini Kishor Sanghvi College of commerce and economics', 'Bachelor''s of Mass Media (BMM)', NULL),
('zcrm_889048000017058771', 'Criselle', 'Amelia Lopez -  ODMC  - 16161', 'Amelia', 'Lopez', 'abc12@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Outreach Initiated', '1.599410000093889e+17', '2025-08-23 06:52:12', 'Ecommerce Ads', '360 Marketing', NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, NULL, NULL, NULL),
('zcrm_889048000017058772', 'Criselle', 'Henry Gonzalez -  ODMC  - 16162', 'Henry', 'Gonzalez', 'abc13@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Hired', '1.5994100000716323e+17', '2025-08-23 06:52:12', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Khalsa College for Women', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000017058774', 'Criselle', 'Evelyn Wilson -  ODMC  - 16164', 'Evelyn', 'Wilson', 'abc14@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Knocked Off', NULL, '2025-08-23 06:52:12', NULL, NULL, 'Health / Personal Reason', NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, 'Shri mata vaishno devi University', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000017058775', 'Criselle', 'Alexander Anderson -  ODMC  - 16165', 'Alexander', 'Anderson', 'abc15@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Outreach Initiated', '1.5994100000840483e+17', '2025-08-23 06:52:12', 'Client Strategy', 'Social Media Management (Organic)', NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Maharaja Agrasen Himalayan Garhwal University', 'Bachelor of Arts (BA)', NULL),
('zcrm_889048000017058776', 'Criselle', 'Harper Thomas -  ODMC  - 16166', 'Harper', 'Thomas', 'abc16@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Knocked Off', NULL, '2025-08-23 06:52:12', NULL, NULL, 'Health / Personal Reason', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Acharya institute of Technology', 'B.E ( CSE )', NULL),
('zcrm_889048000017058777', 'Criselle', 'Michael Taylor -  ODMC  - 16167', 'Michael', 'Taylor', 'abc17@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Outreach Initiated', '1.5994100000892214e+17', '2025-08-23 06:52:12', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'KR Degree college', 'BSC', NULL),
('zcrm_889048000017058778', 'Criselle', 'Elijah Moore -  ODMC  - 16168', 'Elijah', 'Moore', 'abc18@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Knocked Off', NULL, '2025-08-23 06:52:12', NULL, NULL, 'No Response', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000017058779', 'Criselle', 'Daniel Jackson -  ODMC  - 16169', 'Daniel', 'Jackson', 'abc19@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Knocked Off', NULL, '2025-08-23 06:52:12', NULL, NULL, 'Health / Personal Reason', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'NSSCE Palakkad', 'Bachelor of Technology (BTech)', NULL),
('zcrm_889048000017311292', 'Criselle', 'Aria Martin -  ODMC  - 16152', 'Aria', 'Martin', 'abc20@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Hired', '1.5994100000928e+17', '2025-08-26 19:03:34', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, NULL, NULL, NULL),
('zcrm_889048000017311293', 'Criselle', 'James Lee -  ODMC  - 16153', 'James', 'Lee', 'abc21@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'On Hold', NULL, '2025-08-26 19:03:34', NULL, NULL, NULL, 'On hold by Student', 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'KES College', 'Bachelor of Management Studies (BMS)', NULL),
('zcrm_889048000017311309', 'Criselle', 'Evelyn Perez -  ODMC  - 16186', 'Evelyn', 'Perez', 'abc22@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'On Hold', NULL, '2025-08-26 19:03:34', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Abhinav Vidya Mandir', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000017311310', 'Criselle', 'Matthew Thompson -  ODMC  - 16187', 'Matthew', 'Thompson', 'abc23@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'On Hold', NULL, '2025-08-26 19:03:34', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'GGSIPU', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000017311311', 'Criselle', 'Scarlett White -  ODMC  - 16188', 'Scarlett', 'White', 'abc24@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Outreach Initiated', '1.59941000009117e+17', '2025-08-26 19:03:34', NULL, NULL, NULL, 'Personal/Family Reason', 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'IHM Dehradun', 'BSc in Hospitality & Hotel Management', NULL),
('zcrm_889048000017463914', 'Harshita', 'David Harris -  ODMC  - 16244', 'David', 'Harris', 'abc25@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Knocked Off', NULL, '2025-08-31 00:52:10', NULL, NULL, 'Dropout', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000017463915', 'Harshita', 'Abigail Sanchez -  ODMC  - 16245', 'Abigail', 'Sanchez', 'abc26@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Hired', '1.599410000080531e+17', '2025-08-31 00:52:10', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, NULL, NULL, NULL),
('zcrm_889048000017463918', 'Harshita', 'Joseph Clark -  ODMC  - 16248', 'Joseph', 'Clark', 'abc27@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'On Hold', NULL, '2025-08-31 00:52:10', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, NULL, NULL, NULL),
('zcrm_889048000017465092', 'Harshita', 'Chloe Ramirez -  ODMC  - 16219', 'Chloe', 'Ramirez', 'abc28@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Taxila Business School', 'Bsc. In Hospitality Studies and Catering Services', NULL),
('zcrm_889048000017465093', 'Harshita', 'Samuel Lewis -  ODMC  - 16220', 'Samuel', 'Lewis', 'abc29@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'NDMVP SAMAJ''S COLLEGE OF ENGINEERING', 'Bachelor of Engineering (BE)', NULL),
('zcrm_889048000017465094', 'Harshita', 'Elena Robinson -  ODMC  - 16221', 'Elena', 'Robinson', 'abc30@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Outreach Initiated', '1.5994100000831648e+17', '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'PES university', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000017465095', 'Harshita', 'Sebastian Walker -  ODMC  - 16222', 'Sebastian', 'Walker', 'abc31@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Knocked Off', NULL, '2025-08-29 11:05:43', NULL, NULL, 'Dropout', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000017465096', 'Harshita', 'Madison Young -  ODMC  - 16223', 'Madison', 'Young', 'abc32@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Hired', '1.59941000008437e+17', '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, 'MIT-WPU', 'Bachelors of Liberal Arts (Major in Psychology and Minor in Advertising and Branding Communication)', NULL),
('zcrm_889048000017465097', 'Harshita', 'Carter Allen -  ODMC  - 16224', 'Carter', 'Allen', 'abc33@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, NULL, NULL, NULL),
('zcrm_889048000017465098', 'Harshita', 'Layla King -  ODMC  - 16225', 'Layla', 'King', 'abc34@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'On Hold', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, 'Vivekanandha College of Arts And Sciences For Women', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000017465099', 'Harshita', 'Owen Wright -  ODMC  - 16226', 'Owen', 'Wright', 'abc35@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Hired', '1.599410000085763e+17', '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'SVKM''s NMIMS', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000017465100', 'Harshita', 'Maya Scott -  ODMC  - 16227', 'Maya', 'Scott', 'abc36@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Knocked Off', NULL, '2025-08-29 11:05:43', NULL, NULL, 'Low Academic Course', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Inifd', 'Interior Design', NULL),
('zcrm_889048000017465101', 'Harshita', 'Wyatt Torres -  ODMC  - 16228', 'Wyatt', 'Torres', 'abc37@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Australian Institute of Higher Education', 'Business Information System', NULL),
('zcrm_889048000017465102', 'Harshita', 'Hazel Nguyen -  ODMC  - 16229', 'Hazel', 'Nguyen', 'abc38@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Knocked Off', NULL, '2025-08-29 11:05:43', NULL, NULL, 'Low Academic Course', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'ITM IDM INSTITUTE OF DESIGN', 'Bachelor In Fashion Design', NULL),
('zcrm_889048000017465103', 'Harshita', 'John Hill -  ODMC  - 16230', 'John', 'Hill', 'abc39@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Outreach Initiated', '1.5994100000870208e+17', '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'H.R. College of Commerce and Economics, Churchgate', 'Bachelor of Management Studies (BMS)', NULL),
('zcrm_889048000017465104', 'Harshita', 'Victoria Flores -  ODMC  - 16231', 'Victoria', 'Flores', 'abc40@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Thakur College of Science and Commerce', 'Bachelor of Management Studies (BMS)', NULL),
('zcrm_889048000017465105', 'Harshita', 'Jack Green -  ODMC  - 16232', 'Jack', 'Green', 'abc41@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Hired', '1.5994100000827466e+17', '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, 'The Wilson College', 'Bachelor of Arts (BA)', NULL),
('zcrm_889048000017465106', 'Harshita', 'Lily Adams -  ODMC  - 16233', 'Lily', 'Adams', 'abc42@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'ACSENDA School of Management', 'Bachelor of Medicine', NULL),
('zcrm_889048000017465107', 'Harshita', 'Luke Nelson -  ODMC  - 16234', 'Luke', 'Nelson', 'abc43@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'On Hold', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, 'On hold by Student', 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Kittel Science College, Dharwad', 'Bachelor of Science (BSc)', NULL),
('zcrm_889048000017465108', 'Harshita', 'Zoey Baker -  ODMC  - 16235', 'Zoey', 'Baker', 'abc44@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'srm university', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000017465109', 'Harshita', 'Julian Hall -  ODMC  - 16236', 'Julian', 'Hall', 'abc45@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Knocked Off', NULL, '2025-08-29 11:05:43', NULL, NULL, 'No Response', NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, NULL, NULL, NULL),
('zcrm_889048000017465110', 'Harshita', 'Grace Rivera -  ODMC  - 16237', 'Grace', 'Rivera', 'abc46@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Outreach Initiated', '1.599410000087021e+17', '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Guru jambheshwar', 'Bachelor of Journalism and Mass Communication (BJMC)', NULL),
('zcrm_889048000017465111', 'Harshita', 'Levi Campbell -  ODMC  - 16238', 'Levi', 'Campbell', 'abc47@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Knocked Off', NULL, '2025-08-29 11:05:43', NULL, NULL, 'No Response', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000017465112', 'Harshita', 'Penelope Mitchell -  ODMC  - 16239', 'Penelope', 'Mitchell', 'abc48@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Hired', '1.5994100000807507e+17', '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Chetana''s Institute of Management & Research', 'Bachelor''s of Mass Media (BMM)', NULL),
('zcrm_889048000017465113', 'Harshita', 'Isaac Carter -  ODMC  - 16240', 'Isaac', 'Carter', 'abc49@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Knocked Off', NULL, '2025-08-29 11:05:43', NULL, NULL, 'Low Academic Course', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Scms noida', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000017465116', 'Harshita', 'Riley Roberts -  ODMC  - 16243', 'Riley', 'Roberts', 'abc50@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-08-29 11:05:43', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'MLB Government college', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000017479040', 'Harshita', 'Gabriel Gomez -  ODMC  - 16241', 'Gabriel', 'Gomez', 'abc51@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Hired', '1.5994100000729107e+17', '2025-08-29 10:58:28', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Bal Bharti College of Commerce', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000017479041', 'Harshita', 'Nora Phillips -  ODMC  - 16242', 'Nora', 'Phillips', 'abc52@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-08-29 10:58:28', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'DMSR Tirpude College, Nagpur', 'MBA', NULL),
('zcrm_889048000017582135', 'Harshita', 'Anthony Evans -  ODMC  - 16372', 'Anthony', 'Evans', 'abc53@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Outreach Initiated', '1.599410000084048e+17', '2025-09-01 18:03:19', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, NULL, NULL, NULL),
('zcrm_889048000017582136', 'Harshita', 'Mila Turner -  ODMC  - 16373', 'Mila', 'Turner', 'abc54@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-09-01 18:03:19', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000017614813', 'Harshita', 'Dylan Diaz -  ODMC  - 16386', 'Dylan', 'Diaz', 'abc55@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-09-02 14:15:46', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000017614814', 'Harshita', 'Aurora Parker -  ODMC  - 16387', 'Aurora', 'Parker', 'abc56@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Not Eligible for Placement Outreach', NULL, '2025-09-02 14:15:46', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000017929218', 'Criselle', 'Lincoln Cruz -  ODMC  - 16389', 'Lincoln', 'Cruz', 'abc57@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'On Hold', NULL, '2025-09-04 10:55:01', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, NULL, NULL, NULL),
('zcrm_889048000017929219', 'Harshita', 'Bella Edwards -  ODMC  - 16390', 'Bella', 'Edwards', 'abc58@gmail.com', 'ACDM & PCDMS August 2025 Batch 2 - 508', 'Outreach Initiated', '1.59941000008373e+17', '2025-09-04 10:55:01', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, NULL, NULL, NULL),
('zcrm_889048000018042023', 'Criselle', 'Christopher Collins -  ODMC  - 16392', 'Christopher', 'Collins', 'abc59@gmail.com', 'ACDM & PCDMS August 2025 Batch 1 - 506', 'Not Eligible for Placement Outreach', NULL, '2025-09-09 00:52:34', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000019215426', 'Siddhi', 'Nova Reyes -  ODMC  - 16428', 'Nova', 'Reyes', 'abc60@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Outreach Initiated', '1.5994100000908915e+17', '2025-09-29 14:30:18', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, NULL, NULL, NULL),
('zcrm_889048000019215427', 'Siddhi', 'Mateo Stewart -  ODMC  - 16432', 'Mateo', 'Stewart', 'abc61@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-09-29 14:30:18', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Maitreyi College, University of Delhi', 'Bachelor of Arts (BA)', NULL),
('zcrm_889048000019272613', 'Siddhi', 'Hazel Morris -  ODMC  - 16425', 'Hazel', 'Morris', 'abc62@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Hired', '1.59941000009124e+17', '2025-09-29 14:00:22', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Dr. D.Y. Patil International University', 'Bachelor of Journalism and Mass Communication (BJMC)', NULL),
('zcrm_889048000019272614', 'Siddhi', 'Ezra Morales -  ODMC  - 16426', 'Ezra', 'Morales', 'abc63@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-09-29 14:00:22', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Mit WPU', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000019272615', 'Siddhi', 'Elena Murphy -  ODMC  - 16427', 'Elena', 'Murphy', 'abc64@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Outreach Initiated', '1.5994100000919907e+17', '2025-09-29 14:00:22', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, NULL, NULL, NULL),
('zcrm_889048000019272616', 'Siddhi', 'Isaiah Cook -  ODMC  - 16429', 'Isaiah', 'Cook', 'abc65@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Outreach Initiated', '1.599410000090013e+17', '2025-09-29 14:00:22', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Rajasthan University', 'Bachelor of Arts (BA)', NULL),
('zcrm_889048000019272617', 'Harshita', 'Luna Rogers -  ODMC  - 16430', 'Luna', 'Rogers', 'abc66@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Hired', '1.5994100000772934e+17', '2025-09-29 14:00:22', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000019272618', 'Siddhi', 'Asher Gutierrez -  ODMC  - 16431', 'Asher', 'Gutierrez', 'abc67@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-09-29 14:00:22', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000019272619', 'Siddhi', 'Stella Ortiz -  ODMC  - 16433', 'Stella', 'Ortiz', 'abc68@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Outreach Initiated', '1.5994100000913942e+17', '2025-09-29 14:00:22', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Sinhgad Institute of Technology Lonavala', 'Bachelor of Engineering (BE)', NULL),
('zcrm_889048000019272620', 'Siddhi', 'Leo Morgan -  ODMC  - 16434', 'Leo', 'Morgan', 'abc69@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-09-29 14:00:22', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000020691381', 'Siddhi', 'Zoe Cooper -  ODMC  - 16441', 'Zoe', 'Cooper', 'abc70@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-09-30 16:30:19', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'H.R. College of Commerce and Economics, Churchgate', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000020724007', 'Siddhi', 'Hudson Peterson -  ODMC  - 16439', 'Hudson', 'Peterson', 'abc71@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Outreach Initiated', '1.59941000009123e+17', '2025-09-30 15:56:53', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'MICAS', 'Bachelor of Vocation (BVoc)', NULL),
('zcrm_889048000020724008', 'Siddhi', 'Ivy Bailey -  ODMC  - 16440', 'Ivy', 'Bailey', 'abc72@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-09-30 15:56:53', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'Bharti Vidyapeeth Institute of Management and research, New Delhi', 'Bachelor of Computer Applications (BCA)', NULL),
('zcrm_889048000020724850', 'Harshita', 'Maverick Reed -  ODMC  - 16442', 'Maverick', 'Reed', 'abc73@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Hired', '1.5994100000772458e+17', '2025-09-30 16:26:18', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Vidhayaashram College', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000020724851', 'Siddhi', 'Violet Kelly -  ODMC  - 16443', 'Violet', 'Kelly', 'abc74@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Outreach Initiated', '1.5994100000909142e+17', '2025-09-30 16:26:18', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, 'UPG College', 'Bachelor''s of Mass Media (BMM)', NULL),
('zcrm_889048000020726311', 'Siddhi', 'Eli Howard -  ODMC  - 16436', 'Eli', 'Howard', 'abc75@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-09-30 13:30:18', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'KC DAS COMMERCE COLLEGE', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000020726312', 'Siddhi', 'Willow Ramos -  ODMC  - 16437', 'Willow', 'Ramos', 'abc76@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-09-30 13:30:18', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'Fazlani l''academie globale', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000020726313', 'Siddhi', 'Charles Kim -  ODMC  - 16438', 'Charles', 'Kim', 'abc77@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-09-30 13:30:18', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'Assumption University Bangkok Thailand', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000020726386', 'Criselle', 'Aaliyah Cox -  ODMC  - 16444', 'Aaliyah', 'Cox', 'abc78@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-09-30 17:30:35', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000020726387', 'Criselle', 'Caleb Ward -  ODMC  - 16445', 'Caleb', 'Ward', 'abc79@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Knocked Off', NULL, '2025-09-30 17:30:35', NULL, NULL, 'Health / Personal Reason', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'St. Xavier''s College', 'Bachelor of Management Studies (BMS)', NULL),
('zcrm_889048000020726389', 'Criselle', 'Delilah Richardson -  ODMC  - 16447', 'Delilah', 'Richardson', 'abc80@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-09-30 17:30:35', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Doon Business School', 'Bachelor of Journalism and Mass Communication (BJMC)', NULL),
('zcrm_889048000020726390', 'Criselle', 'Ryan Watson -  ODMC  - 16448', 'Ryan', 'Watson', 'abc81@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-09-30 17:30:35', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'MODEL COLLEGE', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000020726391', 'Criselle', 'Maya Brooks -  ODMC  - 16449', 'Maya', 'Brooks', 'abc82@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Knocked Off', NULL, '2025-09-30 17:30:35', NULL, NULL, 'Health / Personal Reason', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000020726392', 'Criselle', 'Nathan Chavez -  ODMC  - 16450', 'Nathan', 'Chavez', 'abc83@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-09-30 17:30:35', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'MIT WPU', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000020726393', 'Criselle', 'Skyler Wood -  ODMC  - 16451', 'Skyler', 'Wood', 'abc84@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-09-30 17:30:35', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000020726394', 'Criselle', 'Adrian James -  ODMC  - 16452', 'Adrian', 'James', 'abc85@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Knocked Off', NULL, '2025-09-30 17:30:35', NULL, NULL, 'Health / Personal Reason', NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000020726395', 'Criselle', 'Naomi Bennett -  ODMC  - 16453', 'Naomi', 'Bennett', 'abc86@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Hired', '1.5994100000891894e+17', '2025-09-30 17:30:35', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'H.R. College of Commerce and Economics, Churchgate', 'Bachelor of Accounting and Finance (BAF)', NULL),
('zcrm_889048000020728152', 'Criselle', 'Christian Gray -  ODMC  - 16454', 'Christian', 'Gray', 'abc87@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-09-30 17:32:21', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', 'Full Time', NULL, 'Convert of Jesus and Mary High school and jr college', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000020728153', 'Criselle', 'Elena Mendoza -  ODMC  - 16455', 'Elena', 'Mendoza', 'abc88@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-09-30 17:32:21', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'SMT MMK BANDRA', 'Bachelor''s of Mass Media (BMM)', NULL),
('zcrm_889048000020728154', 'Criselle', 'Colton Ruiz -  ODMC  - 16456', 'Colton', 'Ruiz', 'abc89@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Knocked Off', NULL, '2025-09-30 17:32:21', NULL, NULL, 'No Response', NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'IMS ENGINEERING COLLEGE GHAZIABAD', 'Bachelor of Technology (BTech)', NULL),
('zcrm_889048000020728155', 'Criselle', 'Eva Hughes -  ODMC  - 16457', 'Eva', 'Hughes', 'abc90@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Hired', '1.5994100000904726e+17', '2025-09-30 17:32:21', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'SIES College of Arts, Science, and Commerce, Sion West', 'Fashion Design', NULL),
('zcrm_889048000020756297', 'Criselle', 'Landon Price -  ODMC  - 16458', 'Landon', 'Price', 'abc91@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Outreach Initiated', '1.5994100000967533e+17', '2025-09-30 18:30:19', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', 'Internship', NULL, 'Bhratiya Vidya Bhavan Institute of Management Science (under Maulana Abul Kalam Azad University of Technology)', 'Bachelor of arts in mass media and communication', NULL),
('zcrm_889048000020756298', 'Criselle', 'Ruth Alvarez -  ODMC  - 16459', 'Ruth', 'Alvarez', 'abc92@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Knocked Off', NULL, '2025-09-30 18:30:19', NULL, NULL, 'Health / Personal Reason', NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'St. Andrew''s College', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000020756299', 'Criselle', 'Jonathan Castillo -  ODMC  - 16460', 'Jonathan', 'Castillo', 'abc93@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-09-30 18:30:19', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Internship', NULL, 'Christ College', 'Triple majors in Economics, Political Science, and Sociology', NULL),
('zcrm_889048000020769001', 'Criselle', 'Serenity Sanders -  ODMC  - 16461', 'Serenity', 'Sanders', 'abc94@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Outreach Initiated', '1.5994100000740803e+17', '2025-09-30 19:00:18', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'The SIA College Of Higher Education', 'Bachelor of Management Studies (BMS)', NULL),
('zcrm_889048000020825884', 'Harshita', 'Aaron Patel -  ODMC  - 16463', 'Aaron', 'Patel', 'abc95@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Initiate Placement', '1.5994100000756627e+17', '2025-10-03 19:00:44', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000020825885', 'Siddhi', 'Sarah Myers -  ODMC  - 16464', 'Sarah', 'Myers', 'abc96@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-10-03 19:00:44', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000020888068', 'Criselle', 'Nolan Long -  ODMC  - 16465', 'Nolan', 'Long', 'abc97@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Outreach Initiated', '1.5994100000972214e+17', '2025-10-03 19:30:44', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', 'Full Time', NULL, 'Kalina Mumbai University', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000020895920', 'Criselle', 'Alice Ross -  ODMC  - 16466', 'Alice', 'Ross', 'abc98@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Hired', '1.5994100000864733e+17', '2025-10-04 19:00:35', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Lala Lajpat Rai College of Commerce & Economics', 'Bachelor of Banking & Insurance (BBI)', NULL),
('zcrm_889048000021073126', 'Criselle', 'Miles Foster -  ODMC  - 16467', 'Miles', 'Foster', 'abc99@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-10-06 18:04:24', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'USMS', 'MBA', NULL),
('zcrm_889048000021129059', 'Siddhi', 'Ruby Jimenez -  ODMC  - 16468', 'Ruby', 'Jimenez', 'abc100@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-10-07 16:00:55', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000021129060', 'Siddhi', 'Brooks Powell -  ODMC  - 16469', 'Brooks', 'Powell', 'abc101@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-10-07 16:00:55', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Nandha Engineering College', 'Bachelor of Computer Science (BCS)', NULL),
('zcrm_889048000021129061', 'Siddhi', 'Elena Jenkins -  ODMC  - 16470', 'Elena', 'Jenkins', 'abc102@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Outreach Initiated', '1.5994100000963914e+17', '2025-10-07 16:00:55', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000021204168', 'Siddhi', 'Axel Perry -  ODMC  - 16471', 'Axel', 'Perry', 'abc103@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-10-07 16:30:57', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Amity university', 'Bachelor of Business Administration (BBA)', NULL),
('zcrm_889048000021325814', 'Siddhi', 'Clara Russell -  ODMC  - 16479', 'Clara', 'Russell', 'abc104@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-10-09 18:31:02', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, NULL, NULL, NULL),
('zcrm_889048000021330934', 'Criselle', 'Wesley Sullivan -  ODMC  - 16482', 'Wesley', 'Sullivan', 'abc105@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-10-10 19:01:01', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'IAMR Group of institution', 'Bachelor of Computer Applications (BCA)', NULL),
('zcrm_889048000021339242', 'Criselle', 'Cora Bell -  ODMC  - 16480', 'Cora', 'Bell', 'abc106@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-10-10 13:01:03', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', 'Full Time', NULL, 'Smt. Chandibai Himathmal Mansukhani College', 'Bachelor of Commerce (BCom)', NULL),
('zcrm_889048000021342050', 'Harshita', 'Waylon Coleman -  ODMC  - 16476', 'Waylon', 'Coleman', 'abc107@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Hired', '1.5994100000739056e+17', '2025-10-09 18:01:05', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Vidya Vikas Universal College, Malad West, Mumbai.', 'Bachelors Of Mass Media & Communications', NULL),
('zcrm_889048000021342051', 'Shruti', 'Iris Butler -  ODMC  - 16477', 'Iris', 'Butler', 'abc108@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Not Eligible for Placement Outreach', NULL, '2025-10-09 18:01:05', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Kirorimal College', 'BA Hons ( Economics)', NULL),
('zcrm_889048000021342052', 'Siddhi', 'Silas Henderson -  ODMC  - 16478', 'Silas', 'Henderson', 'abc109@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-10-09 18:01:05', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'Patan college for profession studies', 'Bachelor of Science (BSc)', NULL),
('zcrm_889048000021360719', 'Criselle', 'Jade Barnes -  ODMC  - 16481', 'Jade', 'Barnes', 'abc110@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'On Hold', NULL, '2025-10-10 17:31:02', NULL, NULL, NULL, NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'Fergusson College', 'Bachelor of Arts (BA)', NULL),
('zcrm_889048000022868544', 'Criselle', 'Damian Gonzales -  ODMC  - 16483', 'Damian', 'Gonzales', 'abc111@gmail.com', 'ACDM & PCDMS September 2025 Batch 1 - 513', 'Knocked Off', NULL, '2025-10-13 16:31:03', NULL, NULL, 'Dropout', NULL, 'Advanced Certification in Digital Marketing', NULL, NULL, 'Acharya Jagadish Chandra Bose College', 'Bachelor of Management Studies (BMS)', NULL),
('zcrm_889048000023449467', 'Student', 'Audrey Fisher -  ODMC  - 16484', 'Audrey', 'Fisher', 'abc112@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'Knocked Off', NULL, '2025-10-14 17:31:01', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Kirti M Dongursee College', NULL, NULL),
('zcrm_889048000023909600', 'Siddhi', 'Bryson Vasquez -  ODMC  - 16485', 'Bryson', 'Vasquez', 'abc113@gmail.com', 'ACDM & PCDMS September 2025 Batch 2 - 514', 'On Hold', NULL, '2025-10-15 15:31:02', NULL, NULL, NULL, NULL, 'Professional Certification in Digital Marketing and Strategy', NULL, NULL, 'Nerim Group of Institutions', 'BALLB (Bachelor of Arts and Bachelor of Legislative Law)', NULL);

ALTER TABLE interviews
MODIFY CreatedTime VARCHAR(50);

commit;