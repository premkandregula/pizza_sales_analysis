
# 🍕 Pizza Sales Analysis Project

This project presents an end-to-end data analysis pipeline on pizza sales using MySQL and Power BI. It covers data importing, preprocessing, querying, and visual dashboard creation.

---

## 📁 Project Files

- `pizza_sales.csv` — Raw sales data.
- `Pizza_Query.sql` — SQL queries for extracting insights.
- `Pizza_sales_PowerBi.pbix` — Power BI dashboard with visual analytics.

---

## 🧰 Technologies Used

- **MySQL Workbench** (Data processing and querying)
- **Power BI** (Interactive visualization)
- **CSV** (Raw data format)

---

## 🔧 Setup Instructions

### 1. Create the Database

```sql
CREATE DATABASE pizza_db;
USE pizza_db;
```

### 2. Create the Table

```sql
CREATE TABLE pizza_sales (
    order_id INT,
    date DATE,
    time TIME,
    category VARCHAR(50),
    pizza_name_id VARCHAR(100),
    quantity INT,
    total_price DECIMAL(10,2),
    unit_price DECIMAL(10,2),
    pizza_size VARCHAR(10)
);
```

### 3. Import the CSV

Use MySQL Workbench's **Import Wizard** or the SQL command:



> 

---

## 📊 Power BI Dashboard

Open the `Pizza_sales_PowerBi.pbix` file in Power BI Desktop to explore:

- Revenue trends
- Best & worst selling pizzas
- Sales by size, category, and time
- Daily and monthly performance

---

## 📈 SQL Analysis Included

Run the queries in `Pizza_Query.sql` to find:

- 📌 Most popular pizza
- 📆 Peak sales days
- 💵 Highest revenue periods
- 🧱 Category-wise performance

---

## 🚀 Insights You Can Gain

- Top-selling pizza products
- Underperforming pizza types
- Sales behavior by hour and date
- Recommendations to optimize product offerings

---

## 🧩 Requirements

- MySQL 8+ with Workbench
- Power BI Desktop
- Windows/Mac (with file access enabled)


## 🤝 Contributions

Feel free to fork, contribute queries, or suggest new metrics!

---


## 🔗 Connect with Me

[Visit my LinkedIn](www.linkedin.com/in/kandregula-prem-kumar-059642238)

