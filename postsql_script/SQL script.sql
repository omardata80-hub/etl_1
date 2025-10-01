------------------------------------------------------
-- 1. Average spending score by profession
------------------------------------------------------
SELECT 
     "Profession",
    ROUND(AVG("Spending Score (1-100)"), 2) AS avg_spending_score
FROM public.cust_table
GROUP BY  "Profession"
ORDER BY avg_spending_score DESC;

------------------------------------------------------
-- 2. Top 5 highest income customers
------------------------------------------------------
SELECT 
    "CustomerID", 
    "Gender", 
    "Age", 
    "Annual Income ($)", 
    "Spending Score (1-100)", 
    "Profession"
FROM public.cust_table
ORDER BY "Annual Income ($)" DESC
LIMIT 5;

------------------------------------------------------
-- 3. Customers with high income but low spending
-- (Income > 80,000 AND Spending < 40)
------------------------------------------------------
SELECT 
    "CustomerID", 
    "Age", 
    "Annual Income ($)", 
    "Spending Score (1-100)", 
    "Profession"
FROM public.cust_table
WHERE "Annual Income ($)" > 80000
  AND "Spending Score (1-100)" < 40
ORDER BY "Annual Income ($)" DESC;

------------------------------------------------------
-- 4. Average income and spending score by gender
------------------------------------------------------
SELECT 
    "Gender",
    ROUND(AVG("Annual Income ($)"), 2) AS avg_income,
    ROUND(AVG("Spending Score (1-100)"), 2) AS avg_spending
FROM public.cust_table
GROUP BY "Gender";

------------------------------------------------------
-- 5. Professions with more than 3 years average work experience
------------------------------------------------------
SELECT 
     "Profession",
    ROUND(AVG("Work Experience"), 2) AS avg_experience
FROM public.cust_table
GROUP BY  "Profession"
HAVING AVG("Work Experience") > 3
ORDER BY avg_experience DESC;

------------------------------------------------------
-- 6. Customers bucketed into age groups
------------------------------------------------------
SELECT 
    CASE 
        WHEN "Age" BETWEEN 18 AND 25 THEN '18-25'
        WHEN "Age" BETWEEN 26 AND 35 THEN '26-35'
        WHEN "Age" BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
    END AS age_group,
    COUNT(*) AS total_customers
FROM public.cust_table
GROUP BY age_group
ORDER BY total_customers DESC;
