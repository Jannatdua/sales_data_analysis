# 📊 Sales Data Analytics Project

## Overview

This project demonstrates an end-to-end data analytics workflow using Python, MySQL, SQL, and Power BI. The objective is to analyze historical sales data, clean and preprocess it, perform SQL-based business analysis, and build an interactive dashboard to generate meaningful business insights.

The project covers the complete analytics lifecycle—from raw data processing to visualization and reporting.

---

# Dataset

* **Dataset:** Sales Data Sample
* **Format:** CSV
* **Domain:** Sales & Retail Analytics

The dataset contains information related to:

* Customer Details
* Product Information
* Order Details
* Sales Revenue
* Quantity Ordered
* Product Categories
* Countries and Cities
* Order Status

---

# Tools & Technologies

* **Python**

  * Pandas
  * NumPy
  * Matplotlib
  * Seaborn
  * SQLAlchemy
* **MySQL Workbench**
* **SQL**
* **Power BI**
* **DAX (Data Analysis Expressions)**
* **Gamma** (Presentation)
* **Git & GitHub**

---

# Project Workflow

## 1. Data Loading

* Imported the CSV dataset into Python using Pandas.
* Performed initial data exploration using:

  * `head()`
  * `info()`
  * `describe()`

---

## 2. Data Cleaning

The following preprocessing steps were performed:

* Checked and handled missing values
* Removed unnecessary columns
* Verified duplicate records
* Standardized column names
* Converted data types
* Combined contact first and last names into a single column
* Renamed columns for better readability

---

## 3. Database Integration

* Connected Python with MySQL using SQLAlchemy.
* Uploaded the cleaned dataset into MySQL.
* Created a structured database table for analysis.

---

## 4. SQL Analysis

Business-focused SQL queries were written to analyze:

* Total Sales by Country
* Top 5 Customers
* Monthly Sales Trend
* Yearly Sales
* Product Line Performance
* Sales Category Distribution
* Top Cities by Sales
* Average Quantity Ordered
* Highest Revenue Orders
* Running Total of Sales

---

## 5. Power BI Dashboard

An interactive dashboard was developed to visualize key business metrics.

### Dashboard Includes

**KPI Cards**

* Total Sales
* Total Orders
* Total Customers
* Average Order Value

**Visualizations**

* Sales by Product Line
* Monthly Sales Trend
* Sales by Country
* Top 10 Customers

**Interactive Slicers**

* Year
* Country
* Product Line
* Sales Category

---

## 6. Report & Presentation

A detailed project report was prepared covering:

* Project Overview
* Data Cleaning Process
* SQL Analysis
* Dashboard Explanation
* Business Insights
* Recommendations

A presentation summarizing the project was created using **Gamma**.

---

# Key Results

* Identified the highest-performing countries based on sales.
* Determined the top customers contributing the most revenue.
* Compared product line performance.
* Analyzed monthly and yearly sales trends.
* Evaluated sales category distribution.
* Identified the highest revenue-generating orders.
* Developed an interactive dashboard for business decision-making.

---

# Project Structure

```text
Sales-Data-Analytics/
│
├── Dataset/
│   └── sales_data_sample.csv
│
├── Python/
│   └── sales_analysis.py
│
├── SQL/
│   └── sales_queries.sql
│
├── PowerBI/
│   └── Sales_Dashboard.pbix
│
├── Report/
│   └── Sales_Data_Analysis_Report.pdf
│
├── Presentation/
│   └── Sales_Analytics_Presentation.pdf
│
└── README.md
```

---

# How to Run the Project

### 1. Clone the Repository

```bash
git clone: https://github.com/Jannatdua/sales_data_analysis.git
```

---

### 2. Install Required Libraries

```bash
pip install pandas numpy matplotlib seaborn sqlalchemy pymysql
```

---

### 3. Run the Python Script

```bash
python sales_analysis.py
```

This will:

* Load the dataset
* Clean the data
* Perform preprocessing
* Upload the cleaned dataset to MySQL

---

### 4. Execute SQL Queries

* Open MySQL Workbench.
* Import the generated table.
* Run the SQL queries provided in the `SQL` folder.

---

### 5. Open Power BI Dashboard

* Open the `.pbix` file.
* Refresh the data source if required.
* Explore the interactive dashboard using the available slicers.

---

# Future Improvements

* Add predictive sales forecasting using Machine Learning.
* Build customer segmentation models.
* Create automated dashboard refresh using Power BI Service.
* Deploy the dashboard to the cloud for real-time reporting.

---


# sales_data_analysis
An end-to-end Sales Data Analytics project that transforms raw sales data into actionable business insights using Python, MySQL, SQL, and Power BI.
