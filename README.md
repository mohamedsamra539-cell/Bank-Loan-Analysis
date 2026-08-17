# 🏦 Bank Loan & Credit Risk Analysis Dashboard

An end-to-end data analytics project built to evaluate loan portfolio performance, examine credit risk exposure, and monitor borrower behavior across different loan categories, risk grades, and timelines.

---

## 📌 Project Overview
The primary objective of this project is to provide a comprehensive banking intelligence dashboard that translates raw loan data into actionable insights for financial decision-makers. It enables tracking of loan application volumes, total capital funded, repayment behavior, and charged-off rates to optimize lending strategies and mitigate credit risks.

---

## 🛠️ Tech Stack & Workflow

* **Python (Pandas / NumPy / Regex):** Built data cleaning pipelines, handled missing values, parsed date formats, and extracted numerical variables dynamically using Regex.
* **MySQL:** Executed SQL queries to perform initial database exploration, data validation, KPI aggregation, and structured verification.
* **Power BI Desktop:** Developed data models, built dynamic DAX measures for KPIs/ratios, and designed interactive visual reports.
* **DAX & Custom UI:** Engineered dynamic measures for flexible KPI tracking and styled card layouts.

---

## 📊 Key Metrics & Core Insights

| Metric | Value |
| :--- | :--- |
| **Total Applications** | 38.58K |
| **Total Funded Amount** | $435.76M |
| **Total Received Amount** | $473.07M |
| **Average Interest Rate** | 12.05% |
| **Average DTI** | 13.3% |
| **Average Installment** | $326.08 |
| **Charged Off Rate** | 13.82% |

---

## 📁 Repository Structure

```text
├── Bank Loan Analysis.pbix  # Interactive Power BI report file
├── Bank loan.ipynb          # Python data cleaning pipeline
├── Bank_loan.csv            # Raw dataset
├── bank_loan_clean.csv      # Processed dataset
├── bank_loan.sql            # SQL queries for verification & KPIs
└── README.md                # Project documentation
