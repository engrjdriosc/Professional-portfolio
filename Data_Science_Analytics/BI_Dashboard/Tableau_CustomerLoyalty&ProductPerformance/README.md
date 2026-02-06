# 📊 Customer Loyalty & Product Performance Dashboard - Tableau Lab

**Completion Date:** February 2026.  
**Tools:** Tableau, Excel/CSV Data Processing.  
**Skills:** Business Intelligence, Data Visualization, Interactive Dashboard Design, Geographic Analysis, Customer Segmentation.  

## 📁 Files in This Project
- `Dashboard_CustomerLoyalty&ProductPerformance.png` - Final dashboard screenshot/visualization.  
- `CustomerLoyalty.twbx` - Tableau workbook with all worksheets and dashboard.
- `CustomerLoyaltyProgram.csv` - Raw dataset from IBM's customer loyalty program.  
- `README.md` - This documentation file.  

---

## 📋 Project Overview
This project demonstrates comprehensive Tableau capabilities including:

- **5 distinct visualization types** (Maps, Column Charts, Circle Charts, Dual Axis Charts, Bubble Charts).
- **Interactive dashboard assembly** with coordinated visualizations.
- **Advanced filtering techniques** (Top N analysis, geographic filtering).
- **Professional formatting** and business-focused storytelling.

## 🎯 Business Context & Problem Statement
A global electronics retailer with an established customer loyalty program needed to:

1. **Understand geographic performance**: Visualize revenue and quantity sold by country for international expansion planning.
2. **Analyze marketing effectiveness**: Evaluate coupon response rates across different product lines.
3. **Identify high-value markets**: Compare customer lifetime value against sales volume by city.
4. **Segment customer base**: Examine product preferences across different loyalty status tiers.


## 🔧 Technical Implementation

### Data Preparation & Source
- **Dataset**: IBM Customer Loyalty Program data from an electronics chain.
- **Format**: CSV file with multiple dimensions including geographic, demographic, and transactional data.
- **Processing**: Direct upload to Tableau with automatic type recognition and hierarchy creation.

### Visualization Components Created

#### 1. **Geographic Analysis** (RevenueQtySold Worksheet)
   - **Type**: Symbol Map with dual encoding.
   - **Variables**: Latitude, Longitude, Revenue (Size), Quantity Sold (Color).
   - **Customization**: "Streets" background layer for professional presentation.
   - **Business Use**: Identify geographic hotspots and shipping/logistics planning.

#### 2. **Marketing Effectiveness** (QtyCouponResponse Worksheet)
   - **Type**: Stacked Column Chart.
   - **Variables**: Coupon Response (X-axis), Quantity Sold (Y-axis), Product Line (Color).
   - **Insight**: Visual correlation between coupon strategies and sales volume across product categories.

#### 3. **Product Line Response** (MktResponse Worksheet)
   - **Type**: Circle Chart (Alternative visualization).
   - **Variables**: Product Line, Coupon Response, Quantity Sold.
   - **Purpose**: Alternative perspective on marketing effectiveness.

#### 4. **Customer Value Analysis** (LifetimeValue Worksheet)
   - **Type**: Dual Axis Chart (Column + Line).
   - **Variables**: City (X-axis), Quantity Sold (Bars), Customer Lifetime Value (Line).
   - **Advanced Feature**: Top 10 city filter with descending sort.
   - **Business Value**: Identify cities with both high volume AND high customer value.

#### 5. **Customer Segmentation** (DeptSales Worksheet)
   - **Type**: Bubble Chart.
   - **Variables**: Product Line, Loyalty Status, Quantity Sold (Bubble Size).
   - **Analysis**: Distribution of product preferences across loyalty tiers.

### Dashboard Assembly
- **Name**: Customer Loyalty Analytics Dashboard.
- **Layout**: Grid-based arrangement of all 5 worksheets.
- **Interactivity**: Maintained all filtering and selection capabilities.
- **Professional Formatting**: Consistent color schemes, clear titles, logical grouping.

## 📊 Key Insights & Business Implications

### Geographic Insights
- **Revenue Concentration**: Clear identification of highest-performing countries & cities.
- **Quantity vs. Revenue Patterns**: Some regions show high volume but lower revenue per unit.
- **Expansion Planning**: Visual basis for prioritizing market entry/expansion.

### Marketing & Sales Analysis
- **Coupon Effectiveness**: Identification of which coupon strategies drive most sales for each product line.
- **Product Line Performance**: Clear visualization of sales distribution across electronics categories.
- **Campaign Optimization**: Data-driven basis for tailoring marketing strategies.

### Customer Value & Segmentation
- **City Prioritization**: Top 10 cities ranked by combined sales volume and customer lifetime value.
- **Loyalty-Product Alignment**: Identification of which product categories resonate with different loyalty tiers.
- **Personalization Strategy**: Foundation for targeted marketing and product recommendations.

## 🛠️ Skills Demonstrated

| Category | Specific Skills | Business Relevance |
|----------|-----------------|-------------------|
| **Data Visualization** | Symbol Maps, Stacked Column Charts, Circle Charts, Dual Axis Charts, Bubble Charts | Multi-perspective analysis for comprehensive business intelligence |
| **Tableau Platform** | Data Import, Calculated Fields, Show Me Tool, Filter Creation, Dashboard Assembly | End-to-end BI workflow proficiency |
| **Business Analytics** | Geographic Analysis, Customer Segmentation, Marketing ROI, Lifetime Value Analysis | Direct application to strategic business decisions |
| **Dashboard Design** | Layout Optimization, Color Theory, Interactive Elements, Professional Formatting | Creating executive-ready reporting tools |
| **Data Storytelling** | Insight Extraction, Business Context Application, Actionable Recommendations | Translating data into business strategy |
