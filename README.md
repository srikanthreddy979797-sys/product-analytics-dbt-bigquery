# 📊 Product Analytics Warehouse (dbt + BigQuery)

## ⭐ Highlights

- Built a modern analytics warehouse using **dbt + BigQuery**
- Designed **Customer 360 & retention modeling**
- Implemented **incremental transformations**
- Added **data quality tests**
- Published **interactive dbt documentation**
- Simulated real Product Analytics platform (Mixpanel-style)

An end-to-end modern analytics engineering project simulating a **Product Analytics & Martech data platform** similar to Mixpanel or Amplitude.

This project demonstrates how raw event data can be transformed into actionable business insights using **BigQuery + dbt**.

---

## 🚀 Project Overview

Companies need to understand:

- User acquisition performance
- Customer retention
- Marketing attribution
- Customer Lifetime Value (LTV)
- Revenue growth

This warehouse models a complete analytics workflow from **raw events → analytics-ready datasets → dashboards**.

---

## 🏗 Architecture

Raw Events (CSV / Event Stream)
↓
Google BigQuery (Data Warehouse)
↓
dbt Transformations
↓
Analytics Models
(Customer 360, Retention, LTV, Attribution)
↓
Looker Studio Dashboard


---

## 📦 Data Models Built

| Model | Description |
|------|-------------|
| `stg_raw_events` | Cleaned staging layer |
| `customer_360` | Unified customer profile |
| `retention_cohort` | User retention analysis |
| `retention_heatmap` | Cohort visualization table |
| `ltv_model` | Customer lifetime value calculation |
| `first_touch_attribution` | Acquisition source attribution |
| `marketing_roi` | Campaign ROI metrics |
| `growth_funnel` | Acquisition → Activation → Revenue funnel |

---

## 📈 Key Analytics Use Cases

- Cohort Retention Analysis
- Customer Lifetime Value (LTV)
- Marketing ROI Measurement
- Attribution Modeling
- Growth Funnel Analytics
- Product Usage Insights

---

## 🧪 Data Quality & Testing

Implemented dbt tests:

- ✅ Not Null tests
- ✅ Unique key validation
- ✅ Source validation
- ✅ Model lineage tracking

Run tests:

```bash
dbt test


## 🛠 Tech Stack

- **Data Warehouse:** Google BigQuery  
- **Transformation:** dbt Core  
- **Language:** SQL  
- **Visualization:** Looker Studio  
- **Version Control:** GitHub  
- **Environment:** Google Cloud Shell

Local Run:

dbt run
dbt test
dbt docs generate
dbt docs serve


## 📚 Interactive dbt Documentation

Explore the full data lineage and models:

👉 https://srikanthreddy979797-sys.github.io/product-analytics-dbt-bigquery/
