# Data Pipeline using dbt & Snowflake

## 🚀 Project Overview
This project demonstrates hands-on implementation of data transformation workflows using dbt Core with Snowflake following the Medallion Architecture (Bronze, Silver, Gold layers).

The project covers data modeling, testing, reusable transformations, SCD Type-2 implementation, and CI/CD workflow concepts for modern data engineering pipelines.

---

## 🛠️ Tech Stack
- dbt Core
- Snowflake
- SQL
- Git & GitHub
- Jinja Macros

---

## 📂 Project Structure
- `models/` → Bronze, Silver, Gold transformation layers
- `snapshots/` → SCD Type-2 implementation
- `macros/` → Reusable Jinja transformation logic
- `tests/` → Data quality validation checks
- `seeds/` → Static CSV lookup/reference data

---

## ⚙️ Features Implemented

### Data Modeling
- Built layered dbt models using Medallion Architecture
- Developed modular SQL transformations for clean data processing

### Data Testing & Validation
- Implemented Generic Tests (`unique`, `not_null`)
- Practiced Singular Tests for custom validation rules

### Reusable Transformations
- Used Jinja templating and Macros to reduce repetitive SQL code
- Created reusable transformation logic for scalable workflows

### SCD Type-2 Implementation
- Built Slowly Changing Dimension (SCD Type-2) pipelines using dbt Snapshots
- Maintained historical tracking and auditability of records

### CI/CD & Version Control
- Practiced Git/GitHub workflow integration
- Explored CI/CD deployment concepts for dbt projects

---

## 🔍 Key Concepts Covered
- dbt Models
- Medallion Architecture
- Bronze/Silver/Gold Layers
- dbt Tests
- Jinja & Macros
- dbt Snapshots
- SCD Type-2
- Data Validation
- CI/CD Workflow
- Git Version Control
