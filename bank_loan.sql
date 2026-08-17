use bank_loan;
select * from bank_loan;


select count(*) from 
bank_loan;

select * 
from bank_loan
limit 5;

-- total loan applications
select count(*) as total_loan_applications  
from bank_loan;   -- 38576

-- total funded amount
select sum(loan_amount) as Total_funded_amount
from bank_loan;  -- 435757075

-- total amount recieved
select sum(total_payment) as Total_amount_recieved
from bank_loan; -- 473070933

-- average interest rate
select round(avg(int_rate)* 100,2)  as  Average_interest_rate
from bank_loan;

-- Average Dti
select round(avg(dti)* 100,2) as Avg_DTI
from bank_loan;

-- Avergae installment
select round(avg(installment),2) as Avg_Installment
from bank_loan;

-- Number of loans according to loan status

-- loan status Analysis
  select loan_status,
  count(*) as total_loan
  from bank_loan
  group by loan_status
  order by total_loan desc;
  
  -- Percentage of each Loan Status
  
   select loan_status,
  count(*) as total_loan,
  round(
  count(*) * 100 / (select count(*) from bank_loan),2) as loan_Percentage
  from bank_loan
  group by loan_status
  order by loan_percentage desc;
  
  -- 83.33% of the loans have been repaid, 13.82% will be considered a loss because it will not be repaid, and 2% are being repaid.
  
  -- Loan value by Loan Status
  
   select loan_status,
  sum(loan_amount) as total_loan_amount
  from bank_loan
  group by loan_status
  order by total_loan_amount desc;
  
  -- Total amounts collected by Loan Status
    select loan_status,
  sum(total_payment) as total_amount_received
  from bank_loan
  group by loan_status
  order by total_amount_received desc;
  
  
  SELECT 
    MIN(loan_amount) AS min_loan_amount,
    MAX(loan_amount) AS max_loan_amount,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount
FROM bank_loan;


  -- Risk Analysis
  -- Grade vs Loan_status
  select grade,
  loan_status,
  count(*) as total_loans
  from bank_loan
  group by grade,loan_status
  order by grade ,loan_status desc; 

-- rate of charged off for each Grade
select grade,
count(*) as total_loans,
sum(loan_status = 'Charged Off') as charged_off_loans ,
round(
sum(loan_status ='Charged Off') *100  / 
count(*) ,2) as charged_off_rate
from bank_loan
group by grade
order by  charged_off_rate asc;
-- As the loan grade worsens, the likelihood of the loan being charged off increases.

-- Dti vs loan_status
SELECT
    CASE
        WHEN dti < 0.10 THEN 'Low DTI'
        WHEN dti < 0.20 THEN 'Medium DTI'
        ELSE 'High DTI'
    END AS dti_category,

    COUNT(*) AS total_loans,

    SUM(loan_status = 'Charged Off') AS charged_off_loans,

    ROUND(
        SUM(loan_status = 'Charged Off') * 100.0 / COUNT(*),
        2
    ) AS charged_off_rate

FROM bank_loan

GROUP BY dti_category

ORDER BY charged_off_rate DESC;

-- Higher DTI is associated with higher loan default risk. Loans with High DTI had the highest Charged Off Rate at 15.59%, compared with 11.99% for Low DTI loans.

-- laon_status vs Annual income
select loan_status,
round(avg(annual_income),2) as avg_annual_income
from  bank_loan
group by loan_status
order by avg_annual_income desc;
-- The lower the average annual income, the higher the likelihood of a loan being charged off

-- Customer Analysis (emp_length vs loan_status)
select loan_status,
emp_length,
count(*) as total_loan
from bank_loan
group by emp_length ,loan_status
order by emp_length ,loan_status desc;
-- Employment length shows no significant relationship with loan default rates in this dataset.


-- loan_status vs long term months
SELECT 
    loan_term_months,
    COUNT(*) AS total_loans,
    SUM(loan_status = 'Charged Off') AS charged_off_loans,
    ROUND(
        SUM(loan_status = 'Charged Off') * 100.0 / COUNT(*),
        2
    ) AS charged_off_rate
FROM bank_loan
GROUP BY loan_term_months
ORDER BY charged_off_rate DESC;
-- Longer-term loans show a higher default risk, with 60-month loans having a Charged Off rate of approximately 22.4%, compared with 10.7% for 36-month loans. This suggests that longer repayment periods may be associated with increased credit risk.

-- purpose vs total loan
SELECT 
    purpose,
    COUNT(*) AS total_loans,
    SUM(loan_status = 'Charged Off') AS charged_off_loans,
    ROUND(
        SUM(loan_status = 'Charged Off') * 100.0 / COUNT(*),
        2
    ) AS charged_off_rate
FROM bank_loan
GROUP BY purpose
ORDER BY charged_off_rate DESC;
/*
Small business loans have the highest charged-off rate at 25.62%, with 455 charged-off loans.
Debt consolidation has the highest number of charged-off loans at 2,651, with a charged-off rate of 14.55%.
*/

--  home ownership vs total loans
SELECT 
    home_ownership,
    COUNT(*) AS total_loans,
    SUM(loan_status = 'Charged Off') AS charged_off_loans,
    ROUND(
        SUM(loan_status = 'Charged Off') * 100.0 / COUNT(*),
        2
    ) AS charged_off_rate
FROM bank_loan
GROUP BY home_ownership
ORDER BY charged_off_rate DESC;

/*
Renters have the highest number of loans (18,439) and charged-off loans (2,687), with a charged-off rate of 14.57%. 
*/

-- Georaphical analysis
select address_state,
count(*) as total_loans
from bank_loan
group by address_state
order by total_loans desc;

-- Total value of loans by state
select address_state,
sum(loan_amount) as total_funded_amount
from bank_loan
group by address_state
order by total_funded_amount desc;

-- Highest charged off rate by state
select address_state,
count(*) as total_loan,
sum(loan_status = 'charged off') as charged_off_loans,
round(
sum(loan_status = 'charged off' ) / count(*) * 100,2
) as charged_off_rate
from bank_loan
group by address_state
having count(*)>=100
order by charged_off_rate desc;

/*
California has the highest loan volume and the highest number of charged-off loans.
Nevada has the highest default risk with a charged-off rate of 20.95%.
*/


-- time analysis
SELECT 
    MONTH(issue_date) AS loan_month,
    COUNT(*) AS total_loans
FROM bank_loan
GROUP BY  MONTH(issue_date)
ORDER BY  total_loans desc;


SELECT 
   MONTH(issue_date) AS loan_month,
    COUNT(*) AS total_loans,
    SUM(loan_status = 'Charged Off') AS charged_off_loans,
    ROUND(
        SUM(loan_status = 'Charged Off') * 100 / COUNT(*),
        2
    ) AS charged_off_rate
FROM bank_loan
GROUP BY loan_month
ORDER BY charged_off_rate DESC;

-- Loan performance varies slightly across months, with May and December showing the highest charge-off rates (around 15%).

