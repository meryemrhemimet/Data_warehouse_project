# Data_warehouse_project
Welcome! This is my end-to-end SQL Server data warehouse project — raw data in, clean insights out. Explore the architecture, the pipelines, and the SQL behind it all.

# About This Project
This project is a full, hands-on build of a modern data warehouse using SQL Server designed to showv how raw operational data becomes trustworthy, query-ready analytics.

It simulates a real business scenario: two independent source systems — a CRM and an ERP — each exporting their own CSV files, with their own quirks, inconsistencies, and gaps. The job of this project is to take that raw, disconnected data and turn it into a single, unified model that analysts and stakeholders can actually query with confidence.

It's built as a portfolio-grade demonstration of core data engineering skills: architecture design, ETL development, data modeling, data quality testing, and SQL-based analytics.

# The Architecture: Medallion (Bronze → Silver → Gold)
<img width="1402" height="807" alt="Diagramme sans nom drawio (6)" src="https://github.com/user-attachments/assets/e329f9cc-7024-4e88-bba1-c501e71f8f55" />


This warehouse is structured around the Medallion Architecture, a layered design pattern where data quality and usability improve at every stage:

Layer	Purpose	What Happens Here
🟫 Bronze	Raw ingestion	Source CSVs are loaded exactly as-is into SQL Server — no transformations, no assumptions. This preserves a faithful, traceable copy of the original data.
⬜ Silver	Cleansing & standardization	Data is deduplicated, retyped, standardized, and validated. Inconsistent codes, formats, and null values are resolved here — this is where messy data becomes trustworthy data.
🟨 Gold	Business-ready modeling	Cleaned data is reshaped into a star schema — fact and dimension tables designed specifically for fast, intuitive reporting and analytics.

Each layer has one clear job. Nothing gets modeled before it's clean, and nothing gets cleaned before it's safely landed — a strict, predictable flow from raw file to business insight.

# What This Project Covers
Data Architecture — designing a layered warehouse from the ground up
ETL Development — building pipelines that extract, transform, and load data between layers
Data Modeling — designing fact and dimension tables around a star schema
Data Quality Testing — validating the pipeline with checks for nulls, duplicates, and referential integrity
SQL Analytics — writing queries that turn the final model into real business insight (customer behavior, product performance, sales trends)

Together, these cover the full skill set of a modern data engineer / analytics engineer working with SQL Server.

# Project Requirements
1. Data Engineering — Building the Warehouse

Objective: Consolidate sales data from two source systems into a single warehouse that supports reliable analytical reporting.

Specs:

Ingest data from two sources — CRM and ERP — delivered as CSV files
Identify and resolve data quality issues before modeling
Merge both sources into one clean, analysis-friendly model
Focus on the current state of the data (no historical tracking required)
Document the model clearly enough for both technical and business audiences
2. Data Analytics — Turning Data into Insight

Objective: Write SQL-based analytics that surface actionable insight across three key areas:

👥 Customer Behavior
📦 Product Performance
📈 Sales Trends

The goal isn't just clean data — it's clean data that answers real business questions.

📂 Repository Structure
sql-data-warehouse-project/
│
├── datasets/                    # Raw source data (CRM & ERP CSV exports)
│
├── docs/                        # Architecture diagrams & documentation
│   ├── data_architecture.drawio     # Overall warehouse architecture
│   ├── data_flow.drawio             # End-to-end data flow diagram
│   ├── data_models.drawio           # Star schema / data model diagram
│   ├── etl.drawio                   # ETL methods & techniques used
│   ├── data_catalog.md              # Field-level dataset documentation
│   └── naming-conventions.md        # Naming standards for tables, columns, files
│
├── scripts/                     # All SQL logic, organized by layer
│   ├── bronze/                      # Raw ingestion scripts
│   ├── silver/                      # Cleansing & transformation scripts
│   └── gold/                        # Star schema / analytical model scripts
│
├── tests/                       # Data quality & validation scripts
│
├── README.md                    # You are here
├── LICENSE                      # Project license
└── .gitignore
# Tools Used
SQL Server Express	Lightweight, free database engine to host the warehouse
SSMS	GUI for writing, running, and managing SQL scripts
Draw.io	Diagramming the architecture, data flow, and data model
Git & GitHub	Version control and project hosting

⚙️ How It Works, End to End
Bronze: Raw CRM/ERP CSVs → loaded as-is into staging tables
Silver: Staging tables → cleaned, standardized, deduplicated
Gold: Cleaned data → modeled into fact & dimension views (star schema)
Tests: Automated checks validate integrity at each handoff
Analytics: SQL queries run against the Gold layer to answer business questions
