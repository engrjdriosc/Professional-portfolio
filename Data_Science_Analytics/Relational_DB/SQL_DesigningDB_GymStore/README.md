# SQL Gym Store Inventory Management

## 📁 Project Files Structure

```
./SQL_Gym_Store_Inventory/
├── README.md                         # Project documentation
└── Project_DesigningDB_Gymstore.sql  # Complete SQL script with database design and queries
```

## 🏋️ Project Overview
A practical SQL database design and inventory management system for a fitness equipment and supplement store. This project demonstrates **database design principles**, **inventory valuation**, and **business intelligence analysis** for retail operations.

- **Tools Used:** SQLite/MySQL.
- **Skills Demonstrated:** Database Design, Inventory Management, SQL Querying, Business Analytics, Financial Valuation.
- **Business Context:** Retail inventory tracking and financial analysis for a fitness equipment store.

## 🏗️ Database Schema
```sql
CREATE TABLE gym_palace (
    id INTEGER PRIMARY KEY,
    product TEXT,
    price NUMERIC,
    brand TEXT,
    amount INTEGER
);
```

**Inventory Characteristics:**
- **15 products** across fitness equipment and supplements.
- **Price range:** $5.00 to $89.99.
- **Total inventory items:** 168 units.
- **Brands represented:** 15 different manufacturers/suppliers.

## 📊 Product Catalog Analysis

### 1. Price-Based Product Ranking
```sql
SELECT * FROM gym_palace ORDER BY price DESC;
```

| ID | Product | Price | Brand | Stock |
|----|---------|-------|-------|-------|
| 10 | Dumbbell Set | $89.99 | SteelPower | 4 |
| 14 | Kettlebell 20kg | $54.95 | BruteForce | 6 |
| 1 | Whey Protein | $50.00 | ProScience | 12 |
| 7 | Weightlifting Belt | $42.75 | IronGrip | 7 |
| 9 | Pre-Workout Powder | $35.25 | NitroFuel | 9 |
| 5 | Water Jug | $30.50 | HomeCenter | 18 |
| 15 | Multivitamin Pack | $28.60 | HealthFuel | 25 |
| 2 | Atomic Creatine | $25.00 | SmartMuscle | 5 |
| 8 | Yoga Mat | $22.50 | ZenActive | 15 |
| 12 | Foam Roller | $18.30 | RecoveryPlus | 11 |
| 6 | Resistance Bands | $15.99 | FitFlex | 12 |
| 13 | Gym Gloves | $12.99 | GripMaster | 14 |
| 3 | BCAAs | $10.00 | Arnold's | 2 |
| 11 | Jump Rope | $8.45 | SpeedRope | 20 |
| 4 | Hand Grips | $5.00 | MachoMan | 8 |

**Key Observations:**
- **Highest value item:** Dumbbell Set ($89.99, only 4 units in stock).
- **Most stocked item:** Multivitamin Pack (25 units, $28.60 each).
- **Lowest value item:** Hand Grips ($5.00, 8 units in stock).
- **Wide price distribution:** From premium equipment to basic accessories.

### 2. Inventory Valuation Analysis
```sql
SELECT 
    SUM(amount) AS total_quantity, 
    ROUND(SUM(price * amount), 2) AS storage_value 
  FROM gym_palace;
```

| Metric | Value |
|--------|-------|
| Total Inventory Quantity | 168 units |
| Total Storage Value | $4,436.70 |

**Business Insights:**
- **Average item value:** $26.41 ($4,436.70 ÷ 168 units).
- **Inventory diversity:** 15 unique products averaging 11.2 units each.
- **Capital allocation:** $4,436.70 tied up in physical inventory.


## 🛠️ Technical Implementation

### SQL Skills Demonstrated:
1. **Database Design:** CREATE TABLE with proper data types and primary key.
2. **Data Insertion:** INSERT statements with various data types (INTEGER, NUMERIC, TEXT).
3. **Sorting & Ordering:** ORDER BY with DESC for price ranking.
4. **Aggregate Functions:** SUM() for quantity and financial calculations.
5. **Mathematical Operations:** price * amount calculations within aggregate functions.
6. **Data Formatting:** ROUND() function for financial reporting.


---
