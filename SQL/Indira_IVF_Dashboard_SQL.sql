-- Indira IVF Healthcare Analytics Dashboard
-- SQL Analysis used for Power BI Dashboard

-- 1. Total Treatment Amount
SELECT
    SUM(Treatment_Amount) AS Total_Treatment_Amount
FROM project_practise_data;

-- 2. Average Treatment Amount
SELECT
    ROUND(AVG(Treatment_Amount), 0) AS Average_Treatment_Amount
FROM project_practise_data;

-- 3. Total Patients
SELECT
    COUNT(*) AS Total_Patients
FROM project_practise_data;

-- 4. Doctor-wise Amount by Treatment
SELECT
    Doctor_Name,
    Treatment_Name,
    SUM(Treatment_Amount) AS Total_Treatment_Amount
FROM project_practise_data
GROUP BY Doctor_Name, Treatment_Name
ORDER BY Doctor_Name, Total_Treatment_Amount DESC;

-- 5. Treatment-wise Amount
SELECT
    Treatment_Name,
    SUM(Treatment_Amount) AS Total_Treatment_Amount
FROM project_practise_data
GROUP BY Treatment_Name
ORDER BY Total_Treatment_Amount DESC;

-- 6. Location-wise Patients
SELECT
    Location,
    COUNT(*) AS Total_Patients
FROM project_practise_data
GROUP BY Location
ORDER BY Total_Patients DESC;
