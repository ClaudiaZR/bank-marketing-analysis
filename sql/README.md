# SQL Analysis — Bank Marketing

This folder contains the SQLite script used to explore the Bank Marketing dataset, investigate data quality, validate the data, and prepare an analytical table.

## 1. Dataset Overview

- **Source:** [UCI Machine Learning Repository — Bank Marketing](https://archive.ics.uci.edu/dataset/222/bank+marketing)
- **Database:** bank_marketing_analysis.db
- **Raw table:** bank_additional_full
- **Working table:** bank_marketing_clean
- **Records:** 41,188
- **Columns:** 21
- **Target variable:** y, indicating whether a customer subscribed to a term deposit.

## 2. SQLite Analysis Workflow

### Initial Data Exploration

- Counted the total number of records.
- Examined the table structure and sample records.
- Reviewed customer demographics, including age, job, education, and marital status.
- Explored the distributions of contact methods, contact months, days of the week, and previous campaign outcomes.
- Investigated current and previous campaign contact frequencies.
- Examined the distribution of subscription outcomes.

### Data Quality Checks

- Checked for NULL values in selected columns.
- Investigated unknown categories in job, education, and marital status.
- Reviewed age ranges and identified records representing customers younger than 18.
- Examined campaign variables and selected economic indicators for missing values.

### Working Table Creation and Validation

- Created the bank_marketing_clean table from the raw dataset.
- Inspected the resulting table structure.
- Checked the record count of the new table.

The raw data exploration and initial checks provided the foundation for the subsequent analysis. The working table was created to organize the dataset for further analytical work.

## 3. Key Findings from Initial Exploration

- **Total records:** 41,188
- **Subscribers:** 4,640
- **Non-subscribers:** 36,548
- **Overall subscription rate:** 11.27%

These figures establish the baseline distribution of the target variable, y.

## 4. SQL Skills Demonstrated

- SQLite database exploration
- Aggregate functions: COUNT(), MIN(), MAX(), and AVG()
- Grouping and sorting with GROUP BY and ORDER BY
- Conditional aggregation with CASE WHEN
- Missing value investigation
- Category distribution analysis
- Table creation and validation
- Use of SQLite commands such as PRAGMA table_info()

## 5. SQLite Script

- [bank_marketing_analysis.sql](bank_marketing_analysis.sql) — contains the SQL queries for initial exploration, data quality checks, and working-table creation.

