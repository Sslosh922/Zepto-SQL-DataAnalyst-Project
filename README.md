# Zepto-SQL-DataAnalyst-Project

# 🛒 Zepto Inventory SQL Data Analysis Project

## 📌 Project Overview

This project simulates how real-world data analysts in the e-commerce and retail industries use SQL to analyze inventory, pricing, discounts, and stock availability from a large-scale product catalog.

Using a Zepto product dataset sourced from Kaggle, this project focuses on performing:

* Database creation and schema design
* Exploratory Data Analysis (EDA)
* Data cleaning and preprocessing
* Business-driven SQL analysis
* Inventory and pricing insights

The project demonstrates practical SQL skills used in retail analytics and inventory management systems.

---

# 🎯 Project Objectives

✅ Design and create a structured e-commerce inventory database using SQL

✅ Explore and analyze real-world messy retail data

✅ Clean invalid and inconsistent pricing records

✅ Perform business-focused SQL analysis for pricing, stock, revenue, and discounts

✅ Simulate real analyst workflows used in e-commerce companies

---

# 📁 Dataset Overview

The dataset was sourced from Kaggle and contains Zepto product listing information scraped from the platform.

Dataset Link:
https://www.kaggle.com/datasets/palvinder2006/zepto-inventory-dataset/data?select=zepto_v2.csv

Each row represents a unique SKU (Stock Keeping Unit). Duplicate product names may exist because products are listed in multiple package sizes, quantities, and pricing variations — similar to real-world e-commerce catalogs.

---

# 🧾 Dataset Columns

| Column Name            | Description                        |
| ---------------------- | ---------------------------------- |
| sku_id                 | Unique identifier for each product |
| name                   | Product name                       |
| category               | Product category                   |
| mrp                    | Maximum Retail Price (₹)           |
| discountPercentage     | Discount applied on product        |
| discountedSellingPrice | Final discounted selling price     |
| availableQuantity      | Available stock quantity           |
| weightInGrams          | Product weight in grams            |
| outOfStock             | Stock availability status          |
| quantity               | Units per package                  |

---

# 🛠️ Technologies Used

* SQL
* MySQL
* MySQL Workbench
* Excel
* CSV Dataset

---

# 🔧 Database Table Creation

```sql id="wfh4y0
CREATE TABLE zepto (
    sku_id INT  serial PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp DECIMAL(10,2),
    discountPercentage DECIMAL(5,2),
    availableQuantity INT,
    discountedSellingPrice DECIMAL(10,2),
    weightInGrams INT,
    outOfStock BOOLEAN,
    quantity INT
);
```

---

# 📥 Data Import Process

* Converted Excel dataset into CSV UTF-8 format
* Imported CSV into MySQL Workbench using Table Data Import Wizard
* Fixed datatype mismatches and encoding issues during import
* Handled boolean conversion (`TRUE/FALSE → 1/0`)

---

# 🔍 Exploratory Data Analysis (EDA)

Performed various SQL queries to understand the dataset structure and inventory patterns:

* Counted total records
* Viewed sample data
* Identified null and missing values
* Explored unique product categories
* Compared in-stock vs out-of-stock products
* Detected duplicate product listings across SKUs

---

# 🧹 Data Cleaning

Implemented multiple data cleaning operations:

* Removed rows with invalid MRP or selling price values
* Standardized pricing columns
* Fixed inconsistent inventory records
* Validated numeric and boolean fields

---

# 📊 Business Insights & Analysis

Generated business-focused insights using SQL queries:

## Key Analysis Performed

* Top 10 products with highest discounts
* High-MRP products currently out of stock
* Estimated category-wise revenue potential
* Premium products with low discounts
* Categories with highest average discounts
* Price-per-gram analysis for value products
* Product segmentation into Low, Medium, and Bulk categories
* Inventory weight analysis by category

---

# 📈 Skills Demonstrated

* SQL Querying
* Data Cleaning
* Exploratory Data Analysis
* Aggregations & Grouping
* CASE Statements
* Business Analytics
* Inventory Analysis
* Retail Data Analysis

---

# 🚀 How to Run This Project

## Step 1: Create Database

Create a new MySQL database in MySQL Workbench.

## Step 2: Run SQL Script

Execute the SQL file containing:

* Table creation
* Data cleaning
* EDA queries
* Business analysis queries

## Step 3: Import Dataset

* Download the dataset from Kaggle
* Convert dataset to CSV UTF-8 format
* Import into MySQL Workbench
* Validate imported records

---

# 📌 Project Highlights

* Simulates real-world retail inventory analysis
* Uses practical SQL business queries
* Handles messy and inconsistent retail data
* Demonstrates analyst-style problem solving

---

# 👨‍💻 About Me

I’m Koti Tarun, an aspiring Data Analyst and AI-enabled developer passionate about solving real-world business problems using SQL, Python, data analytics, and AI-driven solutions.

This project showcases practical SQL skills used in inventory analytics and e-commerce data analysis.
