# Bank Loan & Credit Risk Analysis

End-to-end data analysis project examining bank loan performance, borrower risk profiles, and loss drivers using MySQL and Power BI.

---

### Key Financial Metrics

| Metric | Value |
| :--- | :--- |
| Total Applications | 38,576 |
| Total Funded Capital | $435.76M |
| Total Received Amount | $473.07M |
| Average Interest Rate | 12.05% |
| Average DTI Ratio | 13.31% |
| Average Monthly Installment | $326.08 |

---

### Tools Used

* **MySQL:** Data validation, aggregation, and querying risk metrics.
* **Python (Pandas & Regex):** Preprocessing data and cleaning employment lengths.
* **Power BI:** Interactive reporting, data modeling, and DAX calculated metrics.

---

### Risk Analysis & Key Findings

* **Loan Status Breakdown:** 83.33% of loans are fully paid, while **13.82% were Charged Off**, representing direct loss.
* **Credit Grade Risk:** Default rate increases as credit grade drops, with Grade G seeing the highest default rates.
* **Loan Term Impact:** 60-month loans show a **22.40% default rate**, compared to **10.70%** for 36-month loans.
* **DTI Impact:** Borrowers with a high DTI (>20%) reached a **15.59% default rate**, vs 11.99% for low DTI borrowers.
* **Loan Purpose:** **Small business loans** are the highest risk category (**25.62% default rate**). **Debt consolidation** had the largest default volume (2,651 loans).
* **Housing Status:** Renters represent the highest volume (18,439 loans) and highest default count (2,687 loans).
* **Employment Length:** Data shows no significant correlation between employment length and default rate.
* **Geographical Risk:** California had the highest total volume, while **Nevada recorded the highest default rate (20.95%)**.
* **Seasonality:** Default rates peak slightly around May and December (~15%).

---

### Repository Files

* `Bank Loan Analysis.pbix` — Power BI report file
* `Bank loan.ipynb` — Python data preprocessing script
* `Bank_loan.csv` — Raw dataset
* `bank_loan_clean.csv` — Cleaned dataset
* `bank_loan.sql` — MySQL analysis queries
* `README.md` — Project documentation
