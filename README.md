# Bank Marketing Campaign Analysis

## 1. Project Overview

This project analyzes the UCI Bank Marketing dataset to investigate customer subscription patterns and marketing campaign effectiveness. Using SQLite and Tableau, the analysis explores how customer characteristics, campaign contact frequency, and previous campaign outcomes relate to term deposit subscriptions.

The goal is to identify meaningful patterns in customer responses and communicate findings through data analysis and interactive dashboards.

## 2. Business Problem

Banks use direct marketing campaigns to promote financial products, but customer responses vary across demographic groups and campaign interactions.

Understanding these patterns can help identify customer segments with higher subscription rates and evaluate how campaign activity is associated with successful outcomes.

## 3. Business Objectives

- Analyze term deposit subscription rates across customer age groups and job categories.
- Compare subscription rates and subscriber counts to distinguish response rates from overall contribution.
- Investigate the relationship between campaign contact frequency and subscription outcomes.
- Examine how previous campaign outcomes relate to current subscriptions.
- Communicate findings through clear visualizations and interactive dashboards.

## 4. Dataset

The dataset was obtained from the [UCI Machine Learning Repository — Bank Marketing](https://archive.ics.uci.edu/dataset/222/bank+marketing).

- **Original dataset:** bank-additional-full.csv
- **Records:** 41,188
- **Columns:** 21
- **Target variable:** y, indicating whether a customer subscribed to a term deposit.

The dataset includes customer demographics, financial information, marketing campaign contacts, previous campaign outcomes, and economic indicators.

## 5. Key Data Fields

| Field | Description |
|---|---|
| age | Customer's age. |
| job | Customer's job category. |
| marital | Customer's marital status. |
| education | Customer's education level. |
| default | Indicates whether the customer has credit in default. |
| housing | Indicates whether the customer has a housing loan. |
| loan | Indicates whether the customer has a personal loan. |
| contact | Communication method used to contact the customer. |
| month | Month of the last contact during the current campaign. |
| day_of_week | Day of the week of the last contact. |
| duration | Duration of the last contact, in seconds. |
| campaign | Number of contacts during the current campaign for this customer. |
| pdays | Days since the customer was last contacted in a previous campaign; 999 indicates no previous contact. |
| previous | Number of contacts before the current campaign. |
| poutcome | Outcome of the previous marketing campaign. |
| emp.var.rate | Employment variation rate. |
| cons.price.idx | Consumer price index. |
| cons.conf.idx | Consumer confidence index. |
| euribor3m | Three month Euribor interest rate. |
| nr.employed | Number of employees, an economic indicator. |
| y | Whether the customer subscribed to a term deposit (yes or no). |

## 6. Tools and Skills

- **SQLite:** Data exploration, aggregation, data quality checks, and working table creation.
- **Tableau:** Calculated fields, KPI cards, heatmaps, box plots, Pareto style charts, dual axis charts, table calculations, interactive filters, and dashboards.
- **GitHub:** Project documentation, SQL script management, and portfolio presentation.

## 7. Data Preparation and Quality Checks

The raw dataset was imported into SQLite and explored before further analysis.

The work included:

- Inspecting the table structure and total record count.
- Reviewing customer demographic and campaign category distributions.
- Checking selected columns for NULL values.
- Investigating unknown categories in job, education, and marital status.
- Reviewing age ranges, campaign contact frequency, and previous campaign activity.
- Creating the bank_marketing_clean working table and checking its structure and record count.
- Exporting the prepared dataset as bank_marketing_clean.csv.

The working table was created from the raw table. Its creation alone does not imply that every field was transformed or that unknown categories were removed.

## 8. Analytical Approach

### Customer Segment Analysis

- Compared subscription rates across age groups.
- Examined subscriber counts by age group.
- Evaluated subscription rates by job category.
- Used a heatmap to explore subscription rates by job category and marital status.
- Compared subscription rates with subscriber volumes.

### Marketing Campaign Effectiveness

- Grouped customers by the number of contacts during the current campaign.
- Compared subscription rates across contact frequency groups.
- Created a Pareto style chart showing each contact group's contribution to total subscribers and the cumulative percentage.
- Used a box plot to compare campaign contact distributions by subscription outcome.
- Compared current subscription rates by previous campaign outcome.

## 9. Key Findings

- **Overall subscription rate:** 11.27%, representing 4,640 subscriptions among 41,188 records.
- **Customer segments:** Student and retired job categories showed relatively high subscription rates among the job categories analyzed.
- **Subscriber volume:** Customers aged 30–39 contributed the largest number of subscribers.
- **Campaign contact groups:** Customers contacted 1–5 times accounted for 95.99% of all subscribers.
- **Contact frequency:** Subscription rates declined across higher contact-frequency groups, from 13.04% for one contact to 3.56% for ten or more contacts.
- **Previous campaign outcomes:** Customers with a successful previous campaign outcome had a 65.11% current subscription rate, compared with 14.23% for previous failures and 8.83% for records with no previous outcome recorded.

These findings describe associations in the dataset and do not establish that contact frequency causes subscription outcomes.

## 10. Recommendations

- Evaluate both subscription rates and subscriber counts when prioritizing customer segments.
- Investigate why some age and job groups show stronger subscription rates.
- Review repeated contact strategies without assuming that more contacts cause lower subscription rates.
- Consider previous campaign success as a potentially useful signal when analyzing customer responses.
- Validate findings further before using them to guide actual marketing decisions.

## 11. Project Structure

```text
bank_marketing_analysis/
├── README.md
├── sql/
│   ├── README.md
│   └── bank_marketing_analysis.sql
├── data/
│   └── README.md
└── tableau/
    ├── README.md
    └── screenshots/
        ├── customer_segment_analysis.png
        └── marketing_campaign_effectiveness.png
```

## 12. Project Workflow

1. **Data exploration:** Investigated the raw dataset using SQLite.
2. **Data quality checks:** Reviewed selected missing values, unknown categories, and data distributions.
3. **Working table preparation:** Created and validated the working table.
4. **Analysis:** Examined customer segments, campaign contact frequency, and previous campaign outcomes.
5. **Visualization:** Developed two Tableau dashboards to communicate the findings.
6. **Documentation:** Organized the SQL script, dataset documentation, dashboard screenshots, and project findings in GitHub.

## 13. Tableau Dashboards

### Customer Segment Analysis

Examines subscription rates and subscriber counts across age groups, job categories, and marital status.

![Customer Segment Analysis Dashboard](https://github.com/ClaudiaZR/bank_marketing_analysis/raw/main/tableau/screenshots/customer_segment_analysis.png)

[View dashboard screenshot](screenshots/customer_segment_analysis.png)

### Marketing Campaign Effectiveness

Explores campaign contact frequency, subscriber contribution by contact group, contact distributions by subscription outcome, and previous campaign outcomes. Includes a Pareto-style chart with a cumulative percentage line.

![Marketing Campaign Effectiveness Dashboard](screenshots/marketing_campaign_effectiveness.png)

[View dashboard screenshot](https://github.com/ClaudiaZR/bank_marketing_analysis/blob/main/tableau/screenshots/marketing_campaign_effectiveness.png)



## 14. Project Documentation

- [SQL Analysis](sql/README.md)
- [Dataset Documentation](data/README.md)
- [Tableau Dashboards and Analysis](tableau/README.md)

## 15. Data Source

[UCI Machine Learning Repository — Bank Marketing](https://archive.ics.uci.edu/dataset/222/bank+marketing)

