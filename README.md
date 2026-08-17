# 🏦 Bank Loan & Credit Risk Analysis (SQL & Power BI)

An end-to-end data analytics project examining portfolio performance, borrower risk profiles, and loss drivers using MySQL for backend analysis and Power BI for executive reporting.

---

## 📌 Executive Summary & Key KPIs

- **Total Applications:** 38,576
- **Total Funded Capital:** $435.76M
- **Total Capital Recovered:** $473.07M
- **Average Interest Rate:** 12.05%
- **Average DTI:** 13.31%
- **Average Installment:** $326.08

---

## 🛠️ Tech Stack

* **MySQL:** Data exploration, validation, aggregated KPIs, and credit risk analysis.
* **Python (Pandas / Regex):** Dynamic string parsing for `emp_length` and numerical extraction.
* **Power BI Desktop & DAX:** Interactive dashboard design and custom visual measures.

---

## 💡 Key Risk Findings & Business Insights (from SQL Analytics)

### 1. Loan Status & Loss Exposure
- **83.33%** of loans are fully repaid, **13.82%** were **Charged Off** (representing direct capital losses), and **~2%** are currently active.

### 2. Credit Risk Drivers (Grade, Term & Income)
- **Credit Grade:** As the loan grade worsens (from Grade A down to Grade G), the **Charged Off rate increases progressively**.
- **Loan Term:** 60-month term loans carry significantly higher risk (**22.40% Charged Off rate**) compared to 36-month loans (**10.70%**).
- **Annual Income:** Borrowers with lower average annual income demonstrate a noticeably higher rate of default.
- **DTI Ratio:** High DTI borrowers (>20%) hit a peak **15.59% default rate**, compared to **11.99%** for Low DTI (<10%) borrowers.

### 3. Borrower & Purpose Segmentation
- **Loan Purpose:** **Small Business** loans are the highest risk category with a **25.62% default rate**. **Debt Consolidation** represents the largest volume overall, accounting for **2,651 defaulted loans** (14.55% rate).
- **Housing:** Renters represent the highest application volume (18,439 loans) and highest default total (**2,687 charged-off loans** / 14.57% rate).
- **Employment Length:** Shows **no significant correlation** with loan default rates across the dataset.

### 4. Geographical & Seasonality Insights
- **Top Geographic Risk:** **California (CA)** generated the highest overall loan volume and total defaults, while **Nevada (NV)** recorded the highest risk rate at **20.95% Charged Off rate** (for states with $\ge$100 loans).
- **Seasonality:** Peak charge-off rates occur in **May and December** (~15% default rate).

---

## 📁 Repository Structure

```text
├── Bank Loan Analysis.pbix  # Interactive Power BI report file
├── Bank loan.ipynb          # Python preprocessing script
├── Bank_loan.csv            # Raw dataset
├── bank_loan_clean.csv      # Processed dataset
├── bank_loan.sql            # Core SQL risk analysis queries
└── README.md                # Project documentation
