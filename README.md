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
## 📂 Project overview 
This project involves:

Data Architecture: Designing a Modern Data Warehouse Using Medallion Architecture Bronze, Silver, and Gold layers.
ETL Pipelines: Extracting, transforming, and loading data from source systems into the warehouse.
Data Modeling: Developing fact and dimension tables optimized for analytical queries.
Analytics & Reporting: Creating SQL-based reports and dashboards for actionable insights.
🎯 This repository is an excellent resource for professionals and students looking to showcase expertise in:

SQL Development
Data Architect
Data Engineering
ETL Pipeline Developer
Data Modeling
Data Analytics


## 🛠️ Tech Stack

- **SQL**
- **Relational Database (PostgreSQL / SQL Server / MySQL)**
- **Git & GitHub**
- **Draw.io** (Architecture diagrams)
- **Notion** (Project planning & documentation)

---

## 📂 Project Structure

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

##🚀 Project Requirements

# Building the Data Warehouse (Data Engineering)
Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

Specifications
Data Sources: Import data from two source systems (ERP and CRM) provided as CSV files.
Data Quality: Cleanse and resolve data quality issues prior to analysis.
Integration: Combine both sources into a single, user-friendly data model designed for analytical queries.
Scope: Focus on the latest dataset only; historization of data is not required.
Documentation: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

## BI: Analytics & Reporting (Data Analysis)
Objective
Develop SQL-based analytics to deliver detailed insights into:

Customer Behavior
Product Performance
Sales Trends
These insights empower stakeholders with key business metrics, enabling strategic decision-making.



## 📂 Repository Structure

data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project
