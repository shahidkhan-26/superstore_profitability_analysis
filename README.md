# Superstore Profitability Analysis
SQL and Tableau case study analyzing sales, discounts, and profitability using the Superstore dataset.

Tools: SQL (BigQuery), Tableau

Skills: Data Validation, Analytical SQL, Business Analysis, Data Visualization, Storytelling

# Project Overview
This project is an end-to-end data analytics case study focused on understanding why increasing sales did not translate into consistent profitability for a retail superstore.

The analysis uses the Tableau Global Superstore dataset. Although the dataset is structurally clean, I performed data validation and consistency checks using SQL before proceeding with analysis to ensure reliability of insights.

SQL was used to validate data, create analytical views, and derive metrics. Tableau was used to visualize trends, identify profitability risks, and communicate insights clearly for business decision-making.

# Business Problem
Despite steady growth in sales, the business experiences:

(i) Declining profit margins

(ii) Losses in certain product areas

(iii) Heavy dependence on discounting

This analysis aims to answer:

(a) Does sales growth align with profit growth?

(b) How do discounts affect profitability?

(c) Are losses widespread or concentrated?

(d) Which business actions can improve margins without reducing revenue?

# Dataset
Dataset: Tableau Global Superstore

Source: Tableau Sample data

Type: Retail transactional data

Key Fields: Order Date, Region, Product category, Sub-Category, Sales, Profit, Discount

# Analytical Approach
The analysis follows a structured and logical workflow:

(1) Data Validation:
Verified data consistency by checking for:

(a) Null values in critical fields

(b) Negative or zero sales anomalies

(c) Duplicate records

(d) Date inconsistencies

(2) Trend Analysis:
Compared overall sales and profit trends to evaluate whether revenue growth translated into profitability.

(3) Hypothesis Formation:
Observed declining profit margins and hypothesized that discounting strategy was a key driver of losses.

(4) Discount Impact Analysis
Analyzed profit margins across discount ranges to identify thresholds beyond which profitability turns negative.

(5) Drill-Down Analysis
Investigated sub-category performance to determine whether losses were systemic or concentrated in specific products.

# SQL Workflow
All analysis was performed using SQL with a clear, reproducible structure.

The SQL files are numbered to reflect analytical flow:

(A) Data Validation:

01_null_validation.sql

02_negative_zero_error_checks.sql

03_duplicate_checks.sql

04_date_validation.sql

(B) Analytical Views & Metrics

05_order_views.sql

06_region_views.sql

07_product_views.sql

08_yearly_trends.sql

09_performance_by_sub_category.sql

10_discount_ranges_of_loss_making_sub_categories.sql

Key analytical logic includes profit margin calculation:

SELECT

  ROUND(SUM(o.Profit)/SUM(o.Sales), 4) AS profit_margin

FROM `superstore-sales-484717.sales.v_orders` o

This approach ensures insights are accurate, scalable, and business-relevant.

# Visualization (Tableau)

The Tableau dashboard translates SQL insights into a single cohesive business narrative, covering:

(1) Sales vs Profit trends (2014–2017)

(2) Declining profit margins despite revenue growth

(3) Discount thresholds leading to negative margins

(4) Concentration of losses in specific sub-categories

(5) Product-level impact of high discounting.

Interactive Dashboard (Tableau Public):
https://public.tableau.com/app/profile/shahid.khan5281/viz/superstoresalesdata_17693627008260/Dashboard1

# Key Insights

(i) Sales Growth Masks Margin Erosion

(ii) Sales increased steadily, while profit margins declined in recent years.

(iii) Clear Discount Threshold Identified

(iv) Profit margins turn consistently negative beyond 20–30% discounts.

(v) Losses Are Highly Concentrated

(vi) A small number of sub-categories (Binders, Tables, Machines) account for the majority of losses.

(vii) High Discounts Amplify Product-Level Losses

(viii)Discounts above 30–40% significantly worsen losses in specific sub-categories.

# Recommendations

(a) Cap discounts at 20% for loss-prone sub-categories

(b) Replace blanket discounting with category-specific pricing strategies

(c) Track performance using profit margins, not sales alone

(d) Review structurally loss-making products for repricing or discontinuation

# Business Impact

This analysis shows that profitability challenges are driven primarily by controllable pricing decisions, not declining demand.

Implementing discount governance and profit-focused KPIs can significantly improve margins while maintaining sales growth.

# Conclusion

This case study demonstrates how SQL-based data validation and analysis, combined with Tableau visual storytelling, can uncover profitability risks hidden behind strong sales performance and convert data into actionable business insights.
