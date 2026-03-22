# Sakila Data Warehouse (dbt Project)

## 📊 Overview

This project implements a data warehouse using **dbt** on top of the Sakila dataset.
It transforms raw transactional data into structured **dimension and fact tables**, enabling analytical queries and reporting.

---

## 🎯 Business Goal

Analyze customer behavior, rentals, and payments in a movie rental system in order to:

* Understand customer activity
* Track revenue and payments
* Enable scalable analytics for BI tools

---

## ⚙️ Tech Stack

* **dbt (data build tool)**
* **SQL**
* **Data Warehouse**: Postgres

---

## 🧱 Project Structure

```
models/
  ├── dim/        # Dimension tables (customers, dates, etc.)
  ├── fact/       # Fact tables (payments, rentals)
macros/           # Reusable SQL logic
seeds/            # Static datasets
snapshots/        # Historical tracking (if used)
```

---

## 🚀 Key Features

* Built **incremental models** for efficient data processing
* Designed **dimensional modeling (star schema)**
* Implemented **custom macros** for reusable transformations
* Added **logging mechanism** using dbt hooks (`on-run-start`, `on-run-end`)
* Created **data quality structure** using dbt conventions

---

## 🧠 What I Learned

* How to structure a production-like dbt project
* Writing modular and reusable SQL with macros
* Building scalable data models (dim/fact separation)
* Managing pipelines using dbt hooks

---

## ▶️ How to Run

```bash
dbt run
dbt test
```

---

## 📌 Notes

This project was developed as part of a Data Analysis & BI course,
with a focus on real-world data modeling and transformation practices.
