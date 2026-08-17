# Bank Loan & Credit Risk Analysis

An end-to-end data analysis project examining loan portfolio performance, borrower risk profiles, and default drivers using MySQL, Python, and Power BI.

---

### 📌 Overview & Key Metrics

| Metric | Value |
| :--- | :--- |
| **total_loan_applications** | 38,576 |
| **Total_funded_amount** | $435,757,075 |
| **Total_amount_recieved** | $473,070,933 |
| **Average_interest_rate** | 12.05% |
| **Avg_DTI** | 13.31% |
| **Avg_Installment** | $326.08 |

---

### 🛠️ Tools Used

| Tool | Focus & Purpose |
| :--- | :--- |
| **MySQL** | Database querying, aggregated KPIs, and credit risk analysis. |
| **Python (Pandas)** | Data cleaning, handling missing values, and string parsing. |
| **Power BI** | Data modeling, DAX measures, and interactive visual reporting. |

---

### 💡 Key Insights

* **Loan Status:** 83.33% of loans are fully paid, while **13.82% are Charged Off**.
* **Loan Term:** 60-month loans carry a higher default rate (**22.40%**) compared to 36-month loans (**10.70%**).
* **Risk by Purpose:** Small business loans have the highest default rate (**25.62%**), while Debt Consolidation accounts for the largest total default volume (**2,651 loans**).
* **Borrower Profile:** Renters represent the highest volume of default cases (**2,687 loans**). High DTI borrowers default at a higher rate (**15.59%**) vs Low DTI (**11.99%**).
* **Location & Seasonality:** Nevada showed the highest default rate (**20.95%**), with charge-off rates peaking slightly in May and December (**~15%**).

---

### 📁 Repository Structure

```text
├── Bank Loan Analysis.pbix    # Power BI report file
├── Bank loan.ipynb            # Python cleaning notebook
├── Bank_loan.csv              # Raw dataset
├── bank_loan_clean.csv        # Processed dataset
├── bank_loan.sql              # Core MySQL analysis queries
└── README.md                  # Project documentation
