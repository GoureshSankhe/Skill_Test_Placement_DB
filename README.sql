# Skill_Test_Placement_DB
Designed a scalable Campus Placement Management System using MySQL by transforming CSV datasets into a normalized relational database. Implemented PK/FK relationships, optimized SQL queries, and built an executive analytics dashboard to monitor placements, applications, interviews, and hiring insights.


-- LOADING THE DATA INTO CREATED SQL TABLES AS PER THE SKILL TEST SHEETS


SELECT * FROM applications;

SELECT * FROM candidates;

SELECT * FROM enrolments;

SELECT * FROM interviews;

SELECT * FROM jobopenings;

-- QUERY TO FIND TOTAL ENROLMENTS

SELECT COUNT(*) AS TotalEnrolments
FROM Enrolments;

-- QUERY TO FIND TOTAL CANDIDATES
SELECT COUNT(*) AS TotalCandidates
FROM Candidates;

-- QUERY TO FIND ACTIVE/DECLINED JOB OPENINGS
SELECT COUNT(*) AS ActiveJobs
FROM JobOpenings
WHERE JobOpeningStatus='Declined';

-- APPLICATION BY JOB
SELECT
PostingTitle,
COUNT(*) TotalApplications
FROM Applications
GROUP BY PostingTitle
ORDER BY TotalApplications DESC;

-- APPLICATION BY BATCH
SELECT
BatchName,
COUNT(*) Students
FROM Applications
GROUP BY BatchName;

-- CANDIDATE PIPELINE FUNNEL
SELECT 'Enrolled' Stage, COUNT(*) CountValue
FROM Enrolments

UNION ALL

SELECT 'Eligible',
COUNT(*)
FROM Candidates

UNION ALL

SELECT 'Applied',
COUNT(*)
FROM Applications

UNION ALL

SELECT 'Interviewed',
COUNT(*)
FROM Interviews;


-- PLACEMENT BY BATCH
SELECT

c.BatchName,

COUNT(DISTINCT c.CandidateID) TotalCandidates,

COUNT(DISTINCT a.ApplicationID) TotalApplications

FROM Candidates c

LEFT JOIN Applications a

ON c.CandidateID=a.CandidateID

GROUP BY c.BatchName;


-- APPLICATION PER COMPANY MANAGER

SELECT

j.AccountManager,

COUNT(*) Applications

FROM Applications a

JOIN JobOpenings j

ON a.JobOpeningID=j.JobOpeningID

GROUP BY j.AccountManager;


-- Highest Salary Job
SELECT * FROM JobOpenings ORDER BY Salary DESC LIMIT 1;
-- Lowest Salary Job
SELECT * FROM JobOpenings ORDER BY Salary LIMIT 1;

-- VIEW FOR CANDIDATE APPLICATION
CREATE VIEW CandidateApplications AS

SELECT

c.CandidateID,

c.FirstName,

c.LastName,

j.PostingTitle,

j.Salary,

a.ApplicationStatus

FROM Candidates c

JOIN Applications a

ON c.CandidateID=a.CandidateID

JOIN JobOpenings j

ON a.JobOpeningID=j.JobOpeningID;


-- VIEW ON INTERVIEWREPORT

CREATE VIEW InterviewReport AS

SELECT

i.InterviewID,

c.FirstName,

c.LastName,

j.PostingTitle,

i.InterviewType,

i.InterviewStatus,

i.Feedback

FROM Interviews i

JOIN Candidates c

ON i.CandidateID=c.CandidateID

JOIN JobOpenings j

ON i.JobOpeningID=j.JobOpeningID;

