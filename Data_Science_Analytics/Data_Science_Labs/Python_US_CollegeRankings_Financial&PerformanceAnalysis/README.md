# 📊 College Rankings Data Analysis: Exploratory Data Analysis & Statistical Modeling

**Completion Date:** February 2026.  
**Tools:** Python, Pandas, Matplotlib, Plotly, Statsmodels, Jupyter Notebook.  
**Domain:** Higher Education Analysis.  

## 📁 Files in This Project
- `CollegeRankings_Analysis.ipynb` - Complete Jupyter notebook with analysis.
- `CollegeRankingsData.csv` - Dataset from Carnegie Mellon University.
- `README.md` - This documentation file.


---

## 📋 Project Overview
This exploratory data analysis examines the relationships between financial, academic, and geographic factors in U.S. higher education institutions. Using statistical modeling and interactive visualizations, I investigated how tuition costs relate to institutional expenditures, analyzed admission patterns, and mapped the geographic distribution of colleges.

**Key Finding:**A statistically significant linear relationship exists between out-of-state tuition and per-student expenditure (R²=0.44), though other funding sources play substantial roles. Geographic analysis reveals significant state-by-state variation in institutional density, suggesting regional disparities in educational access.
## 🎯 Business & Analytical Objectives

### Core Questions Explored:
1. **Financial Modeling:** What percentage of institutional spending correlates directly with tuition revenue?
2. **Geographic Equity:** How evenly are educational resources distributed across states?
3. **Institutional Diversity:** What patterns emerge between public and private institutions?
4. **Admission Trends:** What does the distribution of acceptance rates reveal about market dynamics?


## 🔧 Technical Implementation Highlights

### **Methodology:**
- **Data Wrangling:** Pandas for cleaning and aggregation.
- **Statistical Modeling:** OLS regression via Statsmodels.
- **Visualization:** Interactive 3D plots with Plotly, static charts with Matplotlib.
- **Geographic Analysis:** State-level aggregation and visualization.

### **Advanced Techniques Applied:**
1. **Multivariate 3D Visualization:** Simultaneous examination of tuition, room/board, and expenditure.
2. **Linear Regression with Statistical Validation:** Hypothesis testing, R² interpretation, p-value analysis.
3. **Distribution Analysis:** Histogram interpretation for acceptance rate patterns.
4. **Geographic Aggregation:** State-level summary statistics and ranking.



## 📊 Key Insights & Implications

### **1. Financial Relationship Analysis (Primary Finding)**
- **Regression Model:** `Expenditure = 0.8128 × Tuition + 1,085.61`.
- **Interpretation:** Each dollar of tuition correlates with approximately $0.81 of per-student expenditure.
- **R² = 0.44:** While statistically significant (p<0.001), 56% of expenditure variance comes from other sources (endowments, state funding, grants).

### **2. Geographic Distribution Patterns**
- **Significant Variation:** College density varies dramatically by state.
- **Access Implications:** States with fewer institutions may face educational access challenges.
-

### **3. Admission Rate Distribution**
- **Right-Skewed Distribution:** Most colleges accept 60-90% of applicants.
- **Market Reality:** Challenges perception of extreme selectivity; suggests competitive recruitment environment.


### **4. Public vs. Private Distinctions**
- **Visual Clustering:** Clear separation in 3D financial space.
- **Funding Models:** Different financial structures and resource allocation patterns.
- **Comparative Analysis:** Methodology applicable to comparing different utility or infrastructure types.

## 🛠️ Skills Demonstrated

| Category | Specific Skills |
|----------|-----------------|
| **Statistical Analysis** | Linear Regression, Hypothesis Testing, R² Interpretation, p-value Analysis |
| **Data Visualization** | 3D Scatter Plots, Interactive Plotly Charts, Histograms, Bar Charts |
| **Data Wrangling** | Pandas Operations, Data Cleaning, GroupBy Aggregations |
| **Business Intelligence** | Translating Statistical Findings to Business Insights, Metric Selection |
| **Technical Communication** | Clear Visualization Labeling, Statistical Interpretation, Narrative Building |

---

## 📝 Project Metadata

- **Data Source:** [Carnegie Mellon University, Integrated Statistics Learning Environment](https://isle.stat.cmu.edu/data-explorers/collegerangings/) (ISLE).
- **License:** Apache 2.0 (open-source, permissive use).  
- **Reproducibility:** Standard Python data science environment. 
- **Analysis Time:** Approximately 3-4 hours including documentation.  
- **File Size:** Minimal dependencies, easily shareable.
