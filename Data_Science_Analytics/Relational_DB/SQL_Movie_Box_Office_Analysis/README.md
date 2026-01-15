# SQL Movie Box Office Analysis
## 📁 Project Files Structure

```
./SQL_Movie_Box_Office_Analysis/
├── README.md    # Description of the project. 
└── Project_TopMovies_DataDigging.sql   # Complete SQL script with all queries
```
## 📊 Project Overview
A comprehensive SQL analysis of the top <a href="http://www.boxofficemojo.com/alltime/world/" > 100 highest-grossing movies worldwide</a>, demonstrating advanced query techniques and data analysis skills applied to real-world business data.

- **Tools Used:** MySQL, Command Line Interface.
- **Skills Demonstrated:** SQL Querying, Data Analysis, Business Intelligence, Statistical Analysis.
## 🏗️ Database Schema
```sql
CREATE TABLE topmovies(
   Rank        INTEGER,      -- Movie ranking by worldwide revenue
   Title       TEXT,         -- Movie title
   Studio      TEXT,         -- Production/Distribution studio
   Worldwide   REAL,         -- Total worldwide revenue (in millions)
   Domestic    REAL,         -- Domestic (US) revenue (in millions)
   DomesticPct REAL,         -- Percentage of revenue from domestic market
   Overseas    REAL,         -- Overseas/international revenue (in millions)
   OverseasPct REAL,         -- Percentage of revenue from international markets
   Year        INTEGER       -- Release year
);
```

**Dataset Characteristics:**
- **100 movies** ranked by worldwide box office revenue.
- **Time span:** 1977-2014 (37 years of film industry data).
- **Revenue units:** Millions of dollars.
- **Studios represented:** 15 major film studios.

## 🔍 Analysis & Results

### 1. Statistical Summary Analysis
```sql
SELECT AVG(year) AS avg_year FROM topmovies;
```

| Metric | Value |
|--------|-------|
| Average Release Year | 2007.64 |

The average top-performing movie was released around 2007-2008, indicating recent films dominate the top revenue positions.

### 2. Ranking Extremes Identification
```sql
SELECT Title AS top_movie, MIN(Rank) AS rank FROM topmovies;
SELECT Title AS bottom_movie, MAX(Rank) AS rank FROM topmovies;
```

| Movie Type | Title | Rank |
|------------|-------|------|
| Top Movie | Avatar | 1 |
| Bottom Movie | Tangled | 100 |

 Avatar (2009) holds the top position with highest worldwide revenue, while Tangled (2010) is at the bottom of this elite list (still top 100 worldwide).

### 3. Studio Performance Analysis (Post-2000)
```sql
  SELECT studio AS top10_studios00s 
    FROM topmovies 
   WHERE Year > 2000 
GROUP BY Studio 
ORDER BY AVG(Rank) 
   LIMIT 10;
```

| Rank | Studio | Description |
|------|--------|-------------|
| 1 | NL | New Line Cinema |
| 2 | DW | DreamWorks |
| 3 | WB | Warner Bros. |
| 4 | LG/S | Lionsgate/Summit |
| 5 | BV | Buena Vista/Disney |
| 6 | Uni. | Universal |
| 7 | Par. | Paramount |
| 8 | Fox | 20th Century Fox |
| 9 | LGF | Lionsgate Films |
| 10 | Sony | Sony Pictures |

New Line Cinema leads in average ranking for post-2000 releases, followed by DreamWorks and Warner Bros.

### 4. Market Focus Classification (CASE Statement Analysis)
```sql
SELECT Title AS top10_movies,
  CASE
    WHEN DomesticPct < 0.5 THEN "International"
    ELSE "National"
  END AS reputation
  FROM topmovies;
```

**Summary of Classification Results:**

| Classification | Count | Percentage | Example Movies |
|----------------|-------|------------|----------------|
| International (DomesticPct < 0.5) | 92 | 92% | Avatar, Titanic, Avengers |
| National (DomesticPct ≥ 0.5) | 8 | 8% | The Dark Knight, Star Wars, The Hunger Games |

**Detailed National-Focused Movies:**

| Title | DomesticPct | Classification |
|-------|-------------|----------------|
| The Dark Knight | 0.53 | National |
| E.T.: The Extra-Terrestrial | 0.55 | National |
| Star Wars | 0.60 | National |
| Iron Man 2 | 0.50 | National |
| The Hunger Games | 0.59 | National |
| The Passion of the Christ | 0.61 | National |

 92% of top-grossing movies earn more revenue internationally than domestically, highlighting the critical importance of global markets for blockbuster success.

### 5. Historical Top Performers Filter
```sql
SELECT Title FROM topmovies WHERE Rank <= 10 AND Year < 2000;
```

| Title | Rank | Year |
|-------|------|------|
| Titanic | 2 | 1997 |

 Titanic (1997) is the only film in the top 10 rankings that was released before the year 2000, demonstrating its exceptional and enduring commercial success spanning decades.


## 🛠️ Technical Implementation

### SQL Skills Demonstrated:
1. **Aggregate Functions:** `AVG()`, `MAX()`, `MIN()`.
2. **Conditional Logic:** `CASE` statements for data categorization.
3. **Filtering Techniques:** `WHERE` with `AND`/`OR` operators.
4. **Grouping & Sorting:** `GROUP BY`, `ORDER BY`, `HAVING` clauses.
5. **Data Limiting:** `LIMIT` for focused result sets.


## 🎯 Business Intelligence Applications

### 1. **Revenue Strategy Analysis**
- Identified international market dependence for blockbuster success.
- Quantified domestic vs. international revenue splits.
- Provided data-driven insights for market allocation decisions.

### 2. **Competitive Benchmarking**
- Ranked studios by performance metrics.
- Identified top performers in specific time periods.
- Established benchmarks for industry success.

### 3. **Trend Analysis**
- Tracked temporal distribution of successful releases.
- Identified industry shifts (pre/post-2000 performance).
- Provided insights for strategic planning and forecasting



---


