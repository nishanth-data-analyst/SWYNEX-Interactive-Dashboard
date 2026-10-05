USE test;

-- 1. View Sample Data
select * from healthcare limit 10;

-- 2. Total Patients
select count(*) as Total_patients
from healthcare;

-- 3. Patients by Gender
select Gender,count(*) as patients_count
from healthcare
group by Gender
order by patients_count DESC;

-- 4. Age Analysis - Maximum, Minimum and Average Age
select max(Age) as Max_age,
       min(Age) as Min_age,
       round(avg(Age),2) as avg_age
from healthcare;

-- 5. Patients by Medical Condition
select `Medical Condition`,count(*) as Patient_count
from healthcare
group by `Medical Condition`
order by Patient_count DESC;

-- 6. Patients by Admission Type
select `Admission Type`,count(*) as Patient_Count
from healthcare
group by `Admission Type`
order by Patient_Count desc;

-- 7. Top 10 Hospitals by Patient Count
select Hospital,count(*) as Patient_Count
from healthcare
group by Hospital
order by Patient_Count desc
limit 10;

-- 8. Patients by Insurance Provider
SELECT `Insurance Provider`, COUNT(*) AS Patient_Count
FROM healthcare
GROUP BY `Insurance Provider`
ORDER BY Patient_Count DESC;

-- 9. Billing Analysis - Highest, Lowest and Average Billing
select max(`billing amount`) as Highest_Billing,
       min(`billing amount`) as Lowest_Billing,
       round(avg(`billing amount`),2) as Average_Billing
from healthcare;

-- 10. Average Billing by Medical Condition
select `medical Condition`,
       round(avg(`billing amount`),2) as Average_Billing
from healthcare
group by `medical Condition`
order by Average_Billing desc;

-- 11. Average Age
SELECT ROUND(AVG(Age), 2) AS Average_Age
FROM healthcare;

-- 12. Total Unique Hospitals
SELECT COUNT(DISTINCT Hospital) AS Total_Hospital
FROM healthcare;














