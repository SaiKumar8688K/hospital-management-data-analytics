# hospital-management-data-analytics
End-to-end hospital operations and financial performance analysis using Excel, PostgreSQL, SQL and Power BI
# Hospital Operations & Financial Performance Analysis

## Business Problem

Hospitals generate data across appointments, doctors, treatments, patients and billing. However, reviewing these datasets separately makes it difficult to get a consolidated view of operational activity and billing performance.

This project uses a simulated hospital dataset to analyze appointment activity, treatment patterns, doctor-wise workload, payment status and billing performance across hospital branches.

The objective is to transform raw healthcare data into meaningful insights through data validation, SQL analysis and interactive Power BI dashboards, helping hospital management explore operational trends and financial indicators.

## Dataset & Project Scope

This project uses a simulated hospital management dataset consisting of five relational CSV files.

| Dataset | Records | Purpose |
|---|---:|---|
| Patients | 50 | Patient demographic and registration information |
| Appointments | 200 | Appointment dates, times, doctors, reasons and statuses |
| Doctors | 10 | Doctor details, specializations, experience and hospital branches |
| Treatments | 200 | Treatment types, costs, descriptions and dates |
| Billing | 200 | Billing amounts, payment methods and payment statuses |

### Scope of Analysis

The project focuses on:

- Appointment volume and appointment status distribution
- Doctor-wise appointment activity
- Appointment trends over time
- Appointment distribution by specialization
- Treatment frequency and billing amounts by treatment type
- Payment status and billing amount analysis
- Billing amounts by hospital branch
- Doctor-wise completed appointments and no-show analysis

The dataset is simulated and is used for learning and analytical demonstration purposes. It does not represent actual patient records or real hospital performance.

## Data Quality & Validation

Before performing SQL analysis, the five CSV datasets were reviewed and validated using Microsoft Excel.

### Validation Activities

The following checks were performed:

- **Missing values:** Checked the datasets for blank or missing cells.
- **Duplicate identifiers:** Checked primary ID columns for duplicate records.
- **Data type validation:** Verified that date, numeric and text fields were stored in appropriate formats.
- **Referential integrity:** Checked patient, doctor, appointment and treatment identifiers across related datasets.
- **Category consistency:** Reviewed values in categorical columns such as gender, appointment status, specialization, treatment type and payment status.
- **Date validation:** Reviewed date ranges and logical date relationships where applicable.
- **Numeric validation:** Checked numeric fields such as treatment cost and billing amounts.

### Validation Outcome

Based on the checks performed in Excel, no missing cells or duplicate primary identifiers were reported in the datasets. Key relationships between records were also checked using identifier comparisons.

The datasets were subsequently imported into PostgreSQL, and record counts were verified against the original files.

| Dataset | Records verified |
|---|---:|
| Patients | 50 |
| Doctors | 10 |
| Appointments | 200 |
| Treatments | 200 |
| Billing | 200 |

These validation activities helped prepare the datasets for SQL analysis and Power BI reporting.

## SQL Analysis & Business Questions

After validating and importing the datasets into PostgreSQL, SQL was used to analyze hospital operations and billing performance across multiple datasets.

### Business Questions Explored

- Which doctors handled the highest number of appointments?
- What is the distribution of appointment statuses?
- Which medical specializations received the highest appointment volume?
- How did appointment volume change month by month?
- Which treatment types were most frequently performed?
- Which treatment types generated the highest billed amounts?
- What was the distribution of bills across payment statuses?
- How did billed amounts vary across hospital branches?
- How did completed and no-show appointments vary across doctors?
- What were the key hospital operational and financial KPIs?

### SQL Techniques Used

- Aggregations using `COUNT()` and `SUM()`
- Grouping using `GROUP BY`
- Sorting using `ORDER BY`
- Filtering using `WHERE`
- Conditional aggregation using `CASE WHEN`
- Date-based analysis using date functions
- Joins across relational tables
- KPI calculations and percentage-based metrics

### Outcome

SQL analysis helped identify appointment trends, treatment patterns, doctor-wise activity, billing distribution, payment status patterns and operational KPIs.

The analysis provided a structured foundation for building interactive dashboards in Power BI.

## Key Findings & Business Insights

The SQL analysis revealed several patterns across hospital operations and billing.

### 1. Appointment Status
No-show appointments accounted for 26% of all appointment records (52 out of 200). Completed appointments accounted for 23%, while cancelled and scheduled appointments each represented 25.5%.

### 2. Specialization Demand
Pediatrics recorded the highest appointment volume, with 98 appointments (49% of all appointments), followed by Dermatology with 70 (35%) and Oncology with 32 (16%).

### 3. Monthly Appointment Trends
April recorded the highest appointment volume with 25 appointments, while September recorded the lowest with 11 appointments. Appointment volumes varied throughout the year.

### 4. Treatment Patterns
Chemotherapy was the most frequently recorded treatment, with 49 records, followed by X-Ray (41), ECG (38), MRI (36) and Physiotherapy (36).

### 5. Billing Performance
The dataset recorded a total billed amount of 551,249.85 across 200 billing records. Chemotherapy contributed the highest billing amount among treatment categories.

### 6. Payment Status
Of the 200 billing records, 64 were marked Paid, 69 Pending and 67 Failed. This indicates that a substantial proportion of bills were not recorded as Paid in the dataset.

### 7. Hospital Branch Billing
Central Hospital recorded the highest billing amount, followed by Eastside Clinic and Westside Clinic.

### 8. Doctor-wise No-show Patterns
No-show rates varied across doctors when calculated using only completed and no-show appointments. These variations provide an opportunity for further investigation, but the small number of eligible appointments per doctor limits the reliability of direct comparisons.

### Conclusion
The analysis highlighted appointment-status patterns, specialization demand, monthly activity, treatment distribution, billing differences and payment-status patterns. These findings can help management identify areas for further investigation and support data-informed operational review.

## Power BI Dashboard Development

After completing SQL analysis, Power BI was used to develop an interactive dashboard to visualize hospital operational and financial performance.

### Dashboard 1 — Hospital Overview

The overview dashboard was designed to provide a consolidated view of hospital operations.

**Key Performance Indicators (KPIs):**
- Total Billed Amount
- Completed Appointments
- No-show Appointments
- Cancelled Appointments
- No-show Rate

**Visualizations:**
- Appointment Status Distribution
- Appointments by Specialization
- Billing Amount by Hospital Branch
- Appointment Trends by Month
- Treatment Distribution

**Interactive Features:**
- Appointment Date slicer
- Doctor Name slicer
- Specialization slicer
- Reset Filters button

### Dashboard 2 — Financial & Treatment Analysis

The second dashboard focuses on billing patterns, treatment analysis and doctor-wise appointment activity.

**Visualizations:**
- Billing Amount by Treatment Type
- Payment Status Distribution
- Billing Amount by Payment Status
- Doctor-wise Appointment Volume
- Completed vs No-show Appointments by Doctor
- No-show Rate by Doctor

**Interactive Features:**
- Synced slicers across dashboard pages
- Interactive filtering
- Reset Filters functionality

### Dashboard Development Outcome

The two-page Power BI report enables users to explore hospital appointment patterns, treatment-related billing, payment status distribution, branch-level billing and doctor-wise appointment activity through interactive visualizations.

## Tools & Technologies Used

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data validation, quality checks and initial dataset inspection |
| PostgreSQL | Data storage, relational table management and SQL analysis |
| SQL | Business queries, aggregations, joins, KPI calculations and data analysis |
| Power BI | Interactive dashboard development, visualization and reporting |
| DAX | KPI measures, calculated columns and no-show rate calculations |

### Workflow

Excel → PostgreSQL → SQL Analysis → Power BI Dashboard

This workflow was used to validate the data, store and analyze relational datasets, and present the findings through interactive dashboards.

## Conclusion

This project demonstrates an end-to-end healthcare data analytics workflow using simulated hospital data.

The project involved validating datasets using Excel, building relational tables in PostgreSQL, performing SQL-based analysis and developing interactive Power BI dashboards.

The analysis explored hospital appointment patterns, doctor-wise activity, treatment distribution, billing performance, payment status and branch-level billing.

Through this project, I applied data validation, relational database management, SQL querying, KPI development, data visualization and dashboard design to transform raw datasets into structured analytical insights.

The project strengthened my practical understanding of the data analytics workflow and how data visualization can support business-oriented analysis.
