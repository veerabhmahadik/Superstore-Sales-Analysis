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
Download Walmart 10K Sales Dataset from Kaggle: https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets

## Executing the code
1. **Run Data Preprocessing**:
Run the code in `python preprocessing.ipynb` in VS Code to clean the dataset.


2. **Import Data into SQL**:
- Open MySQL Workbench and create a new database (superstore_db).
- Load the cleaned dataset into the database.
- Run SQL Queries: Open `SQL_Section.sql` and execute the queries.

## Insights & Findings

### 1. Payment Methods and Sales Analysis
- **Credit card** transactions were the most frequent, followed by **E-wallet** and **Cash**.
- The highest number of items sold was via **Credit Card**, followed by **E-wallet**.

---

### 2. Highest Rated Category per Branch
- The **highest-rated category varies by branch**.
- *Electronic Accessories* and *Food & Beverages* appeared frequently as the top-rated categories.

---

### 3. Busiest Day for Each Branch
- Each branch has a unique **busiest day**, indicating different customer traffic patterns.
- Some branches experience peak sales on **weekdays**, while others see higher sales on **weekends**.

---

### 4. Rating Statistics by City and Category
- **San Antonio (Health & Beauty)** has an average rating of **7.05**.
- **Harlingen (Electronic Accessories)** has the highest maximum rating of **9.6**.

---

### 5. Profit by Category
- **Health & Beauty** generated **$48,651.17** in revenue with a profit of **$18,671.73**.
- **Sports & Travel** had the **highest revenue ($52,497.93)** but not the highest profit.

---

### 6. Most Common Payment Method per Branch
- **E-wallet** is the most used payment method in **WALM001, WALM002, and WALM004**.
- **Credit Card** is the most used payment method in **WALM003**.

---

### 7. Sales Categorized by Time of Day
- **Afternoon** sees the most transactions across all branches.
- **Evening** has fewer transactions compared to **Morning and Afternoon**.

---

### 8. Branches with the Highest Revenue Decline
- The **top 5 branches with the largest revenue declines** were identified.
- Revenue declines indicate **seasonal effects, competition, or economic downturns**.

