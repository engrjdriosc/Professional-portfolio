# **Energy Data Science Lab: Consumption Data Preparation**

## 📁 Project Files

```
./../Python_Energy_Consumption_Data_Preparation/
├── README.md
├── Energy_Consumption_Analysis.ipynb    # Jupyter notebook with complete analysis.
└── data-03.csv                          # Raw consumption data (tabular format).
```

## ⚡ Project Overview
This lab demonstrates **classical data preparation tasks for energy consumption data** using Python's data science stack. The analysis focuses on processing, visualizing, and normalizing power consumption measurements from the Universidad Nacional de Colombia's Bogotá campus, providing insights into consumption patterns, daily profiles, and dimensionality reduction techniques.

## 📊 Dataset Description

### **Source Data:** `data-03.csv`
- **Origin:** Universidad Nacional de Colombia, Bogotá campus power measurements.
- **Format:** Tab-separated values with timestamped electrical measurements.
- **Time Period:** Multiple years of hourly measurements.
- **Measurements Included:**
  - Active power (kW), reactive power (kVAr), apparent power (kVA).
  - Three-phase currents (A, B, C).
  - Line-to-line voltages (AB, BC, CA).
  - Timestamps (date and time).

### **Key Columns Used:**
- `P_k` - Total active power (kW) - Primary analysis variable.
- `FECHA` - Date (YYYY-MM-DD).
- `HORA` - Time (HH:MM:SS) normalized to hour bins.

## 🔬 Analysis Workflow

### **1. Data Loading & Preprocessing**
- **File Reading:** Custom function handles tab-separated format and datetime conversion.
- **Column Standardization:** Renaming for clarity and consistency.
- **Time Normalization:** Extracting hour component from timestamps for hourly grouping.

### **2. Exploratory Visualization**
- **Raw Power Readings:** Time series of active power measurements.
- **Sampled View:** First 100 readings to observe daily variation patterns.
- **Hourly Aggregation:** Conversion to 24-hour format (days × hours matrix).

### **3. Consumption Pattern Analysis**
- **Daily Totals:** Summation of hourly consumption per day.
- **Profile Calculation:** Minimum, mean, and maximum consumption per hour.
- **Variability Assessment:** Box plots showing distribution per hour.

### **4. Data Normalization Techniques**
Three normalization methods implemented and compared:
- **Matrix Normalization:** Global min-max scaling across entire dataset.
- **Column Normalization:** Per-hour scaling (independent hour ranges).
- **Row Normalization:** Per-day scaling with mean adjustment.

### **5. Advanced Analysis**
- **Seasonal Patterns:** Visualization of consumption by day-of-year and day-of-week.
- **Dimensionality Reduction:** Principal Component Analysis (PCA) to identify key patterns.
- **Variance Explanation:** Determining optimal number of principal components.

## 📈 Key Findings

### **Consumption Patterns:**
- **Daily Profile:** Lowest consumption during early morning (00:00-06:00), peaks around midday.
- **Weekly Pattern:** Lower consumption on Sundays (non-working days).
- **Seasonal Effects:** Visible reductions during academic breaks (mid-year and year-end).

### **Normalization Insights:**
- Different normalization methods produce distinct profile shapes.
- **Row normalization** (per-day) best preserves relative consumption patterns for demand management applications.

### **PCA Results:**
- **First 2 components** explain majority of variance (≈80-90%).
- Potential for dimensionality reduction from 24 hours to 2-3 principal components.
- Components may correspond to overall consumption level and daily pattern shape.

## 🛠️ Technical Implementation

### **Python Libraries Used:**
```python
pandas      # Data manipulation and analysis
numpy       # Numerical operations
matplotlib  # Basic plotting and visualization
seaborn     # Enhanced statistical graphics
sklearn     # Machine learning (PCA for dimensionality reduction)
datetime    # Date and time handling
```

### **Custom Functions:**
1. `reading_csv()` - Handles data loading, datetime parsing, and column renaming.
2. `hourly_table()` - Creates hourly consumption matrix from time series data.
3. `normMatrix()`, `normColumns()`, `normRows()` - Three normalization approaches.

### **Analysis Techniques:**
- **Time Series Resampling:** Grouping by date and hour.
- **Statistical Aggregation:** Mean, min, max, variance calculations.
- **Visual Analytics:** Multiple plot types for pattern recognition.
- **Dimensionality Reduction:** PCA for feature space compression.




### **Required Dependencies:**
```txt
pandas>=1.3.0
numpy>=1.21.0
matplotlib>=3.4.0
seaborn>=0.11.0
scikit-learn>=0.24.0
```

### **Learning Objectives Achieved:**
1. Understand energy consumption data structures and preprocessing.
2. Apply time series analysis techniques to power measurements.
3. Compare normalization methods for consumption profiles.
4. Use PCA for dimensionality reduction in consumption data.
5. Visualize seasonal and daily consumption patterns.

## ⚖️ Copyright & Licensing

### **License Information:**
This work is based on course materials from **"Energy Data Science"** by Ing. Oscar Germán Duarte Velasco, published under a Creative Commons license.

**Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0)**

**Full license text:** https://creativecommons.org/licenses/by-nc-sa/3.0/deed.es

### **Usage Notice:**
This analysis is provided for **educational and research purposes only**. The dataset represents actual consumption from Universidad Nacional de Colombia and should be used respectfully in accordance with the license terms.

---

**Tools:** Python, Jupyter Notebook, Data Science Stack.  
**Skills Demonstrated:** Time Series Analysis, Data Normalization, PCA, Energy Analytics. 
**Educational Context:** Universidad Nacional de Colombia - Energy Data Science Course.
