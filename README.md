# Robotics Data SQL Cleanup

**PostgreSQL data cleaning project for a fictional robotics and SaaS company, Neuverra.**

This project showcases a full SQL-based data preparation workflow across multiple business tables. It was built using PostgreSQL and cleaned in pgAdmin 4.

## 🏢 About Neuverra

Neuverra is a fictional, commercial robotics and SaaS firm supplying advanced robotic hardware and support software to manufacturing and logistics companies. The dataset includes synthetic business records from 2020 through early 2025.

---

## 📁 Tables Included

- **customers**  
- **products**  
- **orders**  
- **invoices**  
- **shipments**  
- **returns**  
- **employees**  
- **support_tickets**  
- **marketing_campaigns**  
- **sales_territories**  
- **website_interactions**  

---

## 🛠 Cleanup Steps Performed

- **Nulls handled** (e.g., missing industries labeled "General Manufacturing")
- **Date integrity checks** (e.g., invoice_due ≥ invoice_date, actual_delivery ≥ estimated_delivery)
- **Logic fixes** (e.g., calculated `delivery_delay_days` correctly capped at 0 for early deliveries)
- **Realistic constraints** (e.g., `conversions` capped at 90% of impressions)
- **New column creation** (e.g., `referral_source` added and user_agent dropped)
- **Typo and category normalization** for product and industry fields
- **All foreign key joins verified for referential integrity**

---

## 📦 How to Use

This project is ideal for:

- Practicing SQL JOINs and aggregations  
- Exploring business process analytics  
- Using for AI model training / predictive analytics  
- Testing tools like Tableau, Power BI, or Azure AI Studio  

---

## 📘 Files to Include

Recommended for this repo:

- `/datasets/` folder with cleaned `.csv` exports  
- `/sql/` folder with DDL (create table) and cleanup scripts  
- `README.md` (this file)

---

## 🔧 Tools Used

- PostgreSQL 17  
- pgAdmin 4  
- Data generated with Tonic.ai Fabricate  
- GitHub (this repo)

---

## 🧠 Author

**Scott Campbell**  
*Data Strategy - AI - Marketing*  
[impact.marketing](https://impact-marketing.net)

---

