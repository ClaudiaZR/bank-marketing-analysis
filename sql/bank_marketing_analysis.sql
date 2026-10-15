
-- ============================================================
-- Bank Marketing Analysis
-- SQLite exploration, data quality checks, validation,
-- and working-table creation.
-- ============================================================


-- ============================================================
-- 1. INITIAL DATA EXPLORATION
-- ============================================================

-- Total number of records
SELECT COUNT(*) AS total_records
FROM bank_additional_full;


-- Inspect sample records
SELECT *
FROM bank_additional_full
LIMIT 10;


-- Inspect table structure
PRAGMA table_info(bank_additional_full);


-- ============================================================
-- 2. DATA QUALITY AND CATEGORY INVESTIGATION
-- ============================================================

-- Check for NULL age values
SELECT COUNT(*) AS age_empty
FROM bank_additional_full
WHERE age IS NULL;


-- Check unknown job categories
SELECT COUNT(*) AS unknown_job_values
FROM bank_additional_full
WHERE job LIKE '%unknown%';


-- Check unknown education categories
SELECT COUNT(*) AS unknown_education_values
FROM bank_additional_full
WHERE education LIKE '%unknown%';


-- Check unknown marital-status categories
SELECT COUNT(*) AS unknown_marital_values
FROM bank_additional_full
WHERE marital LIKE '%unknown%';


-- Distribution of marital status
SELECT
    COUNT(marital) AS count_by_marital_status,
    marital
FROM bank_additional_full
GROUP BY marital
ORDER BY COUNT(marital) DESC;


-- Distribution of default status
SELECT
    COUNT("default") AS count_by_default_status,
    "default"
FROM bank_additional_full
GROUP BY "default"
ORDER BY COUNT("default") DESC;


-- Distribution of housing loan status
SELECT
    COUNT(housing) AS count_by_housing_status,
    housing
FROM bank_additional_full
GROUP BY housing
ORDER BY COUNT(housing) DESC;


-- Distribution of personal loan status
SELECT
    COUNT(loan) AS count_by_loan_status,
    loan
FROM bank_additional_full
GROUP BY loan
ORDER BY COUNT(loan) DESC;


-- Distribution of education categories
SELECT
    COUNT(education) AS count_by_education_status,
    education
FROM bank_additional_full
GROUP BY education
ORDER BY COUNT(education) DESC;


-- Distribution of subscription outcomes
-- 'y' indicates whether a customer subscribed to a term deposit.
SELECT
    COUNT(y) AS count_by_y_status,
    y
FROM bank_additional_full
GROUP BY y
ORDER BY COUNT(y) DESC;


-- Distribution of contact methods
SELECT
    COUNT(contact) AS count_by_contact_status,
    contact
FROM bank_additional_full
GROUP BY contact
ORDER BY COUNT(contact) DESC;


-- Distribution of contact months
SELECT
    COUNT(month) AS count_by_month,
    month
FROM bank_additional_full
GROUP BY month
ORDER BY COUNT(month) DESC;


-- Distribution of contact days of the week
SELECT
    COUNT(day_of_week) AS count_by_day_of_the_week,
    day_of_week
FROM bank_additional_full
GROUP BY day_of_week
ORDER BY COUNT(day_of_week) DESC;


-- Distribution of previous campaign outcomes
SELECT
    COUNT(poutcome) AS count_by_poutcome,
    poutcome
FROM bank_additional_full
GROUP BY poutcome
ORDER BY COUNT(poutcome) DESC;


-- ============================================================
-- 3. CAMPAIGN ACTIVITY INVESTIGATION
-- ============================================================

-- Current campaign contact frequency:
-- minimum, maximum, and average number of contacts
SELECT
    MIN(campaign) AS smallest_value,
    MAX(campaign) AS largest_value,
    ROUND(AVG(campaign), 2) AS average_value
FROM bank_additional_full;


-- Number of records for each current campaign contact count
SELECT
    campaign,
    COUNT(campaign) AS count_of_campaign
FROM bank_additional_full
GROUP BY campaign
ORDER BY COUNT(campaign) DESC;


-- Distribution of call duration values
SELECT
    COUNT(duration) AS count_of_duration,
    duration
FROM bank_additional_full
GROUP BY duration
ORDER BY duration;


-- Previous campaign contact frequency:
-- minimum, maximum, and average number of contacts
SELECT
    MIN(previous) AS smallest_value,
    MAX(previous) AS largest_value,
    ROUND(AVG(previous), 2) AS average_value
FROM bank_additional_full;


-- ============================================================
-- 4. NULL VALUE INVESTIGATION
-- ============================================================

-- Check NULL values in selected campaign and economic fields
SELECT
    SUM(CASE WHEN previous IS NULL THEN 1 ELSE 0 END)
        AS null_previous_records,
    SUM(CASE WHEN "emp.var.rate" IS NULL THEN 1 ELSE 0 END)
        AS null_empvarrate_records,
    SUM(CASE WHEN "cons.price.idx" IS NULL THEN 1 ELSE 0 END)
        AS null_conspriceidx_records,
    SUM(CASE WHEN "cons.conf.idx" IS NULL THEN 1 ELSE 0 END)
        AS null_consconfidx_records,
    SUM(CASE WHEN euribor3m IS NULL THEN 1 ELSE 0 END)
        AS null_euribor3m_records,
    SUM(CASE WHEN "nr.employed" IS NULL THEN 1 ELSE 0 END)
        AS null_nremployed_records
FROM bank_additional_full;


-- ============================================================
-- 5. AGE RANGE INVESTIGATION
-- ============================================================

-- Review minimum age, maximum age, and records under 18
SELECT
    MIN(age) AS minimal_age,
    MAX(age) AS maximal_age,
    SUM(CASE WHEN age < 18 THEN 1 ELSE 0 END) AS minor
FROM bank_additional_full;


-- ============================================================
-- 6. CREATE AND VALIDATE WORKING TABLE
-- ============================================================

-- Create a working copy of the raw dataset
CREATE TABLE bank_marketing_clean AS
SELECT *
FROM bank_additional_full;


-- Inspect the working table structure
PRAGMA table_info(bank_marketing_clean);


-- Validate the working table record count
SELECT COUNT(*) AS total_records_clean_table
FROM bank_marketing_clean;


-- ============================================================
-- END OF SCRIPT
-- ============================================================

