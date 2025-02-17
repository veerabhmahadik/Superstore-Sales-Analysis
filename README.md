# Superstore-Sales-Analysis

## Purpose & Goals
The **Superstore Sales Analysis** project aims to analyze sales data from an online retail store. It is divided into two key phases:
1. **Preprocessing & Data Import**: Cleaning and preparing data using Python, then storing it in a SQL database.
2. **SQL Querying & Analysis**: Writing SQL queries to extract insights on sales, customer behavior, and product performance.

## Technologies Used
- **Python**: Data cleaning and transformation.
- **SQL (MySQL/PostgreSQL)**: Querying for analysis.
- **SQLAlchemy & PyMySQL**: Database connection.
- **VS Code**: Development environment.
- **SQL Workbench**: Query execution.
- **Kaggle API**: Dataset download.

## Installation & Setup

2. **Install Required Packages**:
Install the packages from requirements.txt
Download Dataset from Kaggle (if needed): https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets
Dataset source: Walmart 10K Sales Dataset

## Executing the code
1. **Run Data Preprocessing**:
Run the code in `python preprocessing.ipynb` in VS Code to clean the dataset.
(This cleans and prepares the dataset.)

2. **Import Data into SQL**:
Open MySQL Workbench or PostgreSQL and create a new database (superstore_db).
Load the cleaned dataset into the database.
Run SQL Queries:
Open `SQL_Section.sql` and execute the queries.
Import Data into SQL (MySQLworkbench):
The cleaned dataset is loaded into a database.

3. **Run SQL Queries**:
- Open and execute SQL_Section.sql to analyze:
- Sales by region, category, and product.
- Customer purchase trends.
- Revenue insights.
