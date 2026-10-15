# Tableau Dashboards — Bank Marketing Analysis

This section presents two interactive dashboards developed in Tableau to analyze customer subscription patterns and marketing campaign effectiveness.

## 1. Customer Segment Analysis

![Customer Segment Analysis Dashboard](screenshots/customer_segment_analysis.png)

### Objective
Understand how term deposit subscription rates and subscriber counts vary across customer age groups, job categories, and marital status.

### Key Insights
- Students and retired customers showed relatively high subscription rates among the job categories reviewed.
- Customers aged 30–39 contributed the largest number of subscribers.
- Some older age groups showed higher subscription rates, highlighting the importance of comparing rates with subscriber counts.
- Subscription performance varied across job and marital status combinations.

### Tableau Features
- KPI cards
- Bar charts
- Heatmap
- Calculated fields
- Interactive filters
- Dashboard filter actions
- Custom tooltips

## 2. Marketing Campaign Effectiveness

![Marketing Campaign Effectiveness Dashboard](screenshots/marketing_campaign_effectiveness.png)

### Objective
Examine how campaign contact frequency and previous campaign outcomes relate to term-deposit subscription performance.

### Key Insights
- The observed subscription rate declined from 13.04% for records with one contact to 3.56% for records with 10 or more contacts.
- Customers contacted 1–5 times accounted for 95.99% of all subscribers.
- Records with a successful previous campaign outcome had a 65.11% current subscription rate, compared with 14.23% after a previous failure.
- Both subscription outcome groups had a median of two contacts during the current campaign.

These results describe associations in the data and do not establish that contact frequency causes subscription outcomes.

### Tableau Features
- Pareto-style chart
- Dual-axis chart
- Running total and percentage-of-total calculations
- Box plot
- Calculated fields
- Data labels and annotations
- Custom tooltips

## Tools Used
- Tableau Desktop
- Tableau Public
- SQLite and SQL for data preparation

## Interactive Dashboard
[View the Bank Marketing Campaign Analysis on Tableau Public](https://public.tableau.com/app/profile/claudia.zelaya/viz/Bank_Marketing_Campaign_Analysis/BankMarketingCampaignAnalysis)

## Analytical Note
Subscription rates and subscriber counts provide different perspectives on campaign performance. Customer segments with higher rates do not necessarily contribute the largest number of subscribers. All findings should be interpreted in the context of the dataset and its observational nature.
