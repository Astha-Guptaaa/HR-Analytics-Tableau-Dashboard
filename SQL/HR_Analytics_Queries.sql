USE HR_Analytics;
SELECT DATABASE();
show tables;

SELECT COUNT(*) FROM general_data;
SELECT COUNT(*) FROM employee_survey_data;
SELECT COUNT(*) FROM manager_survey_data;

SELECT * FROM general_data LIMIT 5;
SELECT * FROM employee_survey_data LIMIT 5;
SELECT * FROM manager_survey_data LIMIT 5;

DESCRIBE general_data;

-- Check for Duplicate Employee IDs

SELECT EmployeeID,
COUNT(*)
FROM general_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;

-- Check Missing Values
SELECT *
FROM general_data
WHERE Attrition IS NULL;

DESCRIBE employee_survey_data;
DESCRIBE manager_survey_data;

SELECT COUNT(DISTINCT EmployeeID)
FROM general_data;

SELECT COUNT(DISTINCT EmployeeID)
FROM employee_survey_data;

SELECT COUNT(DISTINCT EmployeeID)
FROM manager_survey_data;

SELECT g.EmployeeID
FROM general_data g
LEFT JOIN employee_survey_data e
ON g.EmployeeID = e.EmployeeID
WHERE e.EmployeeID IS NULL;

SELECT g.EmployeeID
FROM general_data g
LEFT JOIN manager_survey_data m
ON g.EmployeeID = m.EmployeeID
WHERE m.EmployeeID IS NULL;


SELECT
SUM(Attrition IS NULL) AS Attrition_Null,
SUM(MonthlyIncome IS NULL) AS Income_Null,
SUM(Age IS NULL) AS Age_Null,
SUM(Department IS NULL) AS Department_Null
FROM general_data;

SELECT
SUM(EnvironmentSatisfaction IS NULL) AS Environment,
SUM(JobSatisfaction IS NULL) AS JobSat,
SUM(WorkLifeBalance IS NULL) AS WorkLife
FROM employee_survey_data;

SELECT
SUM(JobInvolvement IS NULL) AS JobInvolvement,
SUM(PerformanceRating IS NULL) AS Performance
FROM manager_survey_data;

SELECT EmployeeID, COUNT(*)
FROM general_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;

SELECT EmployeeID, COUNT(*)
FROM employee_survey_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;

SELECT EmployeeID, COUNT(*)
FROM manager_survey_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;

SELECT COUNT(*) AS TotalRows,
COUNT(DISTINCT EmployeeID) AS UniqueEmployees
FROM general_data;

SELECT COUNT(*) AS TotalRows,
COUNT(DISTINCT EmployeeID) AS UniqueEmployees
FROM manager_survey_data;

SELECT COUNT(*) AS TotalRows,
COUNT(DISTINCT EmployeeID) AS UniqueEmployees
FROM employee_survey_data;

SELECT *
FROM general_data
WHERE MonthlyIncome = 'NA';
SELECT *
FROM manager_survey_data
WHERE PerformanceRating = 'NA';
SELECT *
FROM employee_survey_data
WHERE EnvironmentSatisfaction = 'NA';

SELECT EmployeeID, COUNT(*)
FROM general_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;

SELECT EmployeeID, COUNT(*)
FROM employee_survey_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;

SELECT EmployeeID, COUNT(*)
FROM manager_survey_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;

SELECT COUNT(*), COUNT(DISTINCT EmployeeID)
FROM general_data;

SELECT COUNT(*), COUNT(DISTINCT EmployeeID)
FROM employee_survey_data;

SELECT COUNT(*), COUNT(DISTINCT EmployeeID)
FROM manager_survey_data;

SELECT EmployeeID, COUNT(*)
FROM general_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;

SELECT EmployeeID, COUNT(*)
FROM employee_survey_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;

SELECT EmployeeID, COUNT(*)
FROM manager_survey_data
GROUP BY EmployeeID
HAVING COUNT(*) > 1;
SELECT COUNT(*) FROM manager_survey_data;
SELECT COUNT(*) FROM employee_survey_data;
SELECT COUNT(*) FROM general_data;


select count(*) from hr_analytics_cleaned_master;
select * from hr_analytics_cleaned_master limit 5;