# Dataset Documentation

## Data Source

The Bank Marketing dataset is from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/222/bank+marketing).

The project uses the bank-additional-full.csv dataset, which contains 41,188 records and 21 columns describing customers, marketing campaign contacts, economic indicators, and term deposit subscription outcomes.

## Data Workflow

The dataset was imported into SQLite for exploration and data quality checks.

The workflow was:

1. **Raw dataset:** bank_additional_full.csv
2. **SQLite raw table:** bank_additional_full
3. **Working table:** bank_marketing_clean
4. **Analytical dataset:** bank_marketing_clean.csv

The initial exploration included checking the table structure, record counts, category distributions, selected NULL values, unknown categories, age ranges, and campaign variables.

The working table was created from the raw table and validated by inspecting its structure and record count.

## Dataset Details

- **Records:** 41,188
- **Columns:** 21
- **Target variable:** y
- **Subscribers (yes):** 4,640
- **Non-subscribers (no):** 36,548
- **Overall subscription rate:** 11.27%

The y variable indicates whether a customer subscribed to a term deposit.

## Files

- bank_marketing_clean.csv — prepared dataset used for the project's analytical workflow.
- ../sql/bank_marketing_analysis.sql — SQL script containing the exploration, data-quality checks, and working table creation.

The original raw dataset is available from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/222/bank+marketing).


