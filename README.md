# 🏗️ SQL Data Warehouse Project (Bronze → Silver → Gold)

This project demonstrates how to design and build a **modern Data Warehouse** using a **layered architecture (Bronze, Silver, Gold)** with SQL.  
It follows **real-world data engineering practices**, including ETL/ELT, data modeling, documentation, and Git version control.

---

## 📌 Project Objectives

- Design a scalable **Data Warehouse architecture**
- Implement **Bronze, Silver, and Gold layers**
- Apply **ETL/ELT best practices**
- Build a **Star Schema** for analytics
- Create reusable SQL scripts & stored procedures
- Document data flows and architecture

---

## 🧱 Data Architecture Overview

<img width="1008" height="571" alt="image" src="https://github.com/user-attachments/assets/949cc828-b8d8-4c42-b64d-3f1c0fbb6484" />

### 🔹 Bronze Layer
- Raw data ingestion
- Extract & Load (EL)
- No transformations
- Historical data preserved

### 🔹 Silver Layer
- Data cleaning & standardization
- Deduplication
- Data quality checks
- Schema enforcement

### 🔹 Gold Layer
- Business logic
- Aggregations & KPIs
- Star Schema (Facts & Dimensions)
- Analytics-ready data

---

## 🛠️ Tech Stack

- **SQL**
- **Relational Database (PostgreSQL / SQL Server / MySQL)**
- **Git & GitHub**
- **Draw.io** (Architecture diagrams)
- **Notion** (Project planning & documentation)

---

## 📂 Project Structure


---

## 📊 Source Systems

- CRM System  
  - Customers  
  - Products  
  - Sales Details  

- ERP System  
  - Customer Data  
  - Location Data  
  - Product Categories  

---

## 🔄 ETL / ELT Workflow

### Bronze Layer
- Analyze source systems
- Create raw tables (DDL)
- Load data using SQL scripts
- Preserve source data as-is

### Silver Layer
- Explore & understand raw data
- Clean nulls and invalid records
- Standardize data formats
- Apply basic transformations

### Gold Layer
- Identify business objects
- Build dimensions 
- Build fact table 
- Create Star Schema model

---

## ⭐ Data Modeling

- **Schema Type:** Star Schema  
- **Fact Table:** Sales  
- **Dimension Tables:
### Why Star Schema?
- Simple design
- Faster queries
- Easy for BI tools

---

## 📄 Documentation

- Data Architecture Diagram
- Data Flow Documentation
- Data Catalog
- Naming Conventions

---




