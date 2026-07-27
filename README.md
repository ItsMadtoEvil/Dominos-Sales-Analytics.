# Domino’s Sales Business Case Study

End-to-end business case study analyzing Domino’s sales performance across products, cities, customers, time periods, and discount categories using **Microsoft Excel**, **SQL Server**, and **Power BI**.

## Project Overview

This project transforms raw Domino’s transaction data into a structured business case study that can be used for portfolio presentation, GitHub documentation, and interview discussion.

The analysis focuses on:
- Revenue and order performance
- Top-performing pizzas and categories
- City-level sales trends
- Day-wise and hour-wise demand patterns
- Discount impact on sales
- Customer behavior and repeat purchases

## Business Problem

Domino’s has large transaction data, but the business needs clearer visibility into what drives sales performance. Management wants to understand:

- Which cities generate the highest revenue
- Which pizzas contribute most to sales
- When customers place the most orders
- How discount categories affect revenue
- Which customers are repeat buyers
- How to improve overall business performance with data-driven decisions

## Business Objectives

- Analyze overall sales performance
- Identify top-performing and underperforming products
- Compare city-wise revenue contribution
- Understand peak ordering hours and busy days
- Evaluate the impact of discounts on revenue
- Study customer purchasing behavior
- Present actionable business recommendations

## Dataset Overview

The project uses a Domino’s sales dataset with transactional fields such as:

- `order_id`
- `order_date`
- `order_time`
- `store_id`
- `city`
- `customer_id`
- `pizza_name`
- `category`
- `size`
- `quantity`
- `unit_price`
- `discount`
- `gst`
- `total_amount`
- `order_type`
- `payment_method`
- `Month`
- `day Of Week`
- `Hour`
- `Discount Category`

### Dashboard Summary
The current dashboard highlights the following key business metrics:

- **Total Revenue:** ₹55.07M
- **Total Orders:** 50K
- **Average Order Value:** ₹1.10K
- **Total Pizzas Sold:** 125K
- **Total Customers:** 21K

## Tools Used

- **Microsoft Excel** — data cleaning and preparation
- **SQL Server** — data analysis and KPI calculations
- **Power BI** — interactive dashboard and reporting
- **PowerPoint** — business case study presentation

## Project Workflow

```text
Raw Data
   ↓
Excel Data Cleaning
   ↓
SQL Analysis
   ↓
Power BI Dashboard
   ↓
Business Case Study PPT
   ↓
Final Recommendations
```

## Excel Data Cleaning

The raw data is cleaned in Microsoft Excel before analysis. Common preparation steps include:

- Removing duplicate records
- Standardizing text fields
- Validating date and time formats
- Checking missing values
- Verifying numeric columns
- Creating derived fields such as:
  - Year
  - Month
  - Day of Week
  - Hour
  - Weekend Flag
  - Peak Hour
  - Discount Category

## SQL Analysis

The SQL section is used to answer core business questions such as:

- What is the total revenue?
- How many orders were placed?
- Which cities contribute the most revenue?
- Which pizzas are the top sellers?
- Which categories and sizes perform best?
- Which days and hours show peak demand?
- How do discounts affect sales?
- Which customers generate the most revenue?

### SQL Topics Covered
- Basic aggregation
- `GROUP BY`
- `ORDER BY`
- `TOP`
- `HAVING`
- City and product ranking
- Day-wise and hour-wise analysis
- Discount and customer analysis

## Power BI Dashboard

The Power BI report is designed as an executive sales dashboard with the following visuals:

- KPI cards for revenue, orders, AOV, pizzas sold, and customers
- Monthly revenue trend
- Revenue by city
- Top 5 pizzas by revenue
- Revenue by category
- Revenue by day of week
- Revenue by hour
- Revenue by discount category

### Slicers Used
- Year
- Month
- City
- Category
- Order Type
- Size

## Key Insights

This project is designed to help answer questions such as:

- Which pizzas drive the most revenue?
- Are sales concentrated in a few cities?
- Which months perform better than others?
- What are the busiest hours for Domino’s?
- Do discounts increase revenue or mainly reduce margins?
- Which customer segments should be targeted for repeat purchases?

> Add your final insights here after completing the analysis on the dataset.

## Business Recommendations

Based on the analysis, the final recommendations may include:

- Prioritize high-performing products in inventory planning
- Focus marketing on top cities and strong-performing locations
- Increase staffing during peak hours
- Use discount campaigns more strategically
- Improve customer retention through repeat-order offers
- Monitor low-performing categories and products

## Folder Structure

```text
Dominos-Sales-Business-Case-Study/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_data_validation.sql
│   ├── 03_kpi_analysis.sql
│   ├── 04_sales_analysis.sql
│   ├── 05_product_analysis.sql
│   ├── 06_city_analysis.sql
│   ├── 07_discount_analysis.sql
│   └── 08_business_insights.sql
│
├── excel/
│   └── Dominos_Analysis.xlsx
│
├── powerbi/
│   └── Dominos_Dashboard.pbix
│
├── ppt/
│   └── Dominos_Business_Case_Study.pptx
│
├── images/
│   └── dashboard_overview.png
│
└── docs/
    ├── project_summary.md
    └── business_recommendations.md
```

## How to Use This Repo

1. Open the Excel file and review the cleaned dataset.
2. Run the SQL scripts in order to reproduce the analysis.
3. Open the Power BI report to interact with the dashboard.
4. Review the PPT for the final business case study presentation.
5. Update the insights and recommendations with your final findings.

## Project Outcome

This case study demonstrates how raw sales data can be converted into a structured business story using data cleaning, SQL analysis, dashboarding, and presentation design. The final result is a portfolio-ready project suitable for interviews, GitHub, and academic submission.

## Author

**Atul Singh Chouhan**

## License

This project is for educational and portfolio use.
