REM   Script: Standard Salary
REM   Salary Standard

SELECT job_title, a.avg_salary AS avg_salary, max_salary-min_salary AS standard_salary, 
a.avg_salary - (max_salary-min_salary) AS salary_difference 
FROM hr.jobs JOIN( 
    SELECT job_id, AVG(salary) AS avg_salary 
    FROM hr.employees 
    GROUP BY job_id) a 
ON jobs.job_id= a.job_id 
ORDER BY salary_difference DESC;

