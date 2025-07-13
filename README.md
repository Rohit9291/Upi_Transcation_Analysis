# 🏦 UPI Transactions 2024 - User Behavior Analysis

## 🚀 Problem Statement

To help fintech startups better understand customer behavior and optimize their UPI-based digital payment services, this project analyzes a dataset of **250,000 UPI transactions from 2024**.

The primary goal is to uncover trends in:
- User activity
- Device preferences
- Age demographics
- Transaction timing
- Merchant category usage

These insights aim to empower **product, marketing, and operations teams** to make data-driven decisions that improve user experience, drive engagement, and increase UPI adoption.

📂 **Dataset**:  
[UPI Transactions 2024 - Kaggle](https://www.kaggle.com/datasets/skullagos5246/upi-transactions-2024-dataset)


## 🛠️ Project Workflow
<img width="1163" height="503" alt="image" src="https://github.com/user-attachments/assets/c5071d20-7916-4200-94e9-24b538d06f7c" />


---

## 🧾 Dataset Columns

- `transaction_id`: Unique identifier for each transaction  
- `timestamp`: Date and time of transaction  
- `transaction_type`: (P2P, P2M, Bill Payment, Recharge)  
- `merchant_category`: Type of merchant  
- `amount`: Transaction value (INR)  
- `transaction_status`: (SUCCESS, FAILED)  
- `sender_age_group`, `receiver_age_group`: User age segments  
- `sender_state`, `sender_bank`, `receiver_bank`: Location and banking details  
- `device_type`: Android, iOS, Web  
- `network_type`: 4G, 5G, WiFi, 3G  
- `fraud_flag`: 1 = Fraudulent, 0 = Genuine  
- `hour_of_day`, `day_of_week`, `is_weekend`: Time-derived fields  

---

## 🛠️ Tools & Technologies

| Layer       | Tools Used            |
|-------------|------------------------|
| Cleaning & EDA | Python (Google Colab) |
| Data Storage & Reporting | BigQuery (SQL)         |
| BI & Visualization | Tableau                 |

---

## 🐍 Python (Cleaning, Feature Engineering, EDA)

Used Python to:
1. Clean and preprocess raw data
2. Perform feature engineering (time features, fraud flags, etc.)
3. Conduct EDA to uncover trends

### 🔍 Key Insights:
- **Most active time:** Monday evenings  
- **Least active time:** Saturday nights  
- Evenings consistently see **high UPI activity**; nights are lowest  
- **26–35** age group is the most active; **56+** is least  
- **Android dominates** UPI transactions, followed by iOS  
- **4G networks** are the most common medium for transactions  
- **Grocery** is the top merchant category; **Education** is lowest  

### 📌 Recommendations:
- Schedule backend maintenance during low-activity periods (e.g., Saturday nights)
- Personalize features for the 26–35 segment; simplify onboarding for 56+
- Optimize mobile UPI experience with lightweight, intuitive apps
- Improve app performance for varying network strengths
- Collaborate with education/health sectors to boost UPI usage in underused categories

📄 _Refer to the Python notebook in the repo for full code and visualizations._

---

## 🗃️ SQL (BigQuery Reporting)

Used SQL to:
1. Store and structure the cleaned data
2. Generate report views for analysis and dashboarding

### 📊 Report Views Created:
- `report_transaction_timing`
- `report_age_group_activity`
- `report_device_network_usage`
- `report_merchant_categories`

📄 _Refer to the SQL file in the repo for report definitions and queries._

---

## 📈 Tableau (Interactive Dashboards)

Used Tableau to create interactive dashboards based on BigQuery report views.

### 💡 Dashboards Include:
- Transaction volume by day/time
- User activity by age group
- Device & network usage patterns
- Merchant category performance

📄 _Refer to the Tableau file in the repo for dashboard access and visual summaries._

---

## 📁 Project Structure
<img width="1163" height="503" alt="image" src="https://github.com/user-attachments/assets/c5071d20-7916-4200-94e9-24b538d06f7c" />

