
# CS50 Movies Database Analysis (Week 7 - 2025 Edition)

## 📁 Project Files
```
./Data_Science_Analytics/05_CS50_Movies_Database_Analysis/
├── README.md
├── movies.db.sql                  # Database schema
├── movies_db1.zip                 # Movies and people CSV data
├── movies_db2.zip                 # Directors, ratings, stars CSV data
├── 1.sql
├── 2.sql
├── 3.sql
├── 4.sql
├── 5.sql
├── 6.sql
├── 7.sql
├── 8.sql
├── 9.sql
├── 10.sql
├── 11.sql
├── 12.sql
└── 13.sql
```


## 🎬 Project Overview
This project is part of **CS50's Introduction to Databases (2025 Edition)** and involves comprehensive SQL analysis of IMDb movie data. The database contains information about movies, directors, actors, and ratings, requiring complex queries to extract meaningful insights about film industry trends and relationships.

## 🏗️ Database Schema

```sql
-- movies.db schema (5 tables)
movies:      id INTEGER, title TEXT, year INTEGER
people:      id INTEGER, name TEXT, birth INTEGER
directors:   movie_id INTEGER, person_id INTEGER  
stars:       movie_id INTEGER, person_id INTEGER
ratings:     movie_id INTEGER, rating REAL, votes INTEGER
```

**Relationships:**
- `movies.id` → `directors.movie_id`, `stars.movie_id`, `ratings.movie_id`
- `people.id` → `directors.person_id`, `stars.person_id`

## 📊 Query Analysis Summary

### 13 SQL Queries Solving Real-World Problems:

| File | Description | Key SQL Concepts |
|------|-------------|------------------|
| `1.sql` | List all movies released in 2008 | Basic SELECT with WHERE |
| `2.sql` | Find Emma Stone's birth year | Single-row retrieval |
| `3.sql` | Movies released 2018+ (alphabetical) | Date filtering, ORDER BY |
| `4.sql` | Count movies with perfect 10.0 rating | COUNT with JOIN |
| `5.sql` | All Harry Potter movies (chronological) | LIKE pattern matching |
| `6.sql` | Average rating of 2012 movies | AVG aggregation |
| `7.sql` | 2010 movies with ratings (sorted) | Multi-table JOIN, multi-column ORDER BY |
| `8.sql` | All actors in "Toy Story" | Subquery JOIN |
| `9.sql` | Actors in 2004 movies (birth order) | JOIN with ORDER BY, year filtering |
| `10.sql` | Directors with movies rated ≥9.0 | Nested JOINs, DISTINCT |
| `11.sql` | Top 5 highest-rated Chadwick Boseman movies | Subquery, JOIN, LIMIT |
| `12.sql` | Movies with both Bradley Cooper & Jennifer Lawrence | GROUP BY with HAVING |
| `13.sql` | Actors who starred with Kevin Bacon (born 1958) | Complex nested queries, exclusion |

## 🛠️ Technical Skills Demonstrated

### **Advanced SQL Proficiency:**
- **Multi-table JOINs:** Combining 3+ tables with proper relationships.
- **Subqueries:** Nested SELECT statements for complex filtering.
- **Aggregation Functions:** COUNT, AVG, with GROUP BY/HAVING.
- **Pattern Matching:** LIKE operator with wildcards.
- **Data Filtering:** WHERE with multiple conditions, NULL handling.
- **Result Ordering:** Multi-column ORDER BY with ASC/DESC.
- **Set Operations:** IN, DISTINCT for unique results.

### **Database Design Understanding:**
- Foreign key relationship identification.
- Schema normalization comprehension.
- Data type selection (INTEGER, TEXT, REAL, etc.).
- Primary key/foreign key relationship navigation.

### **Problem-Solving Approach:**
- Breaking complex requirements into manageable queries.
- Optimizing query structure for readability and performance.
- Handling edge cases (NULL values, duplicate entries).
- Ensuring query accuracy with test cases.

## 📈 Sample Query Analysis

### **Complex Query Example (Query 11):**
```sql
-- Top 5 highest-rated Chadwick Boseman movies
SELECT movies.title
FROM movies
INNER JOIN stars ON stars.movie_id = movies.id
INNER JOIN ratings ON movies.id = ratings.movie_id
WHERE stars.person_id IN (
    SELECT stars.person_id
    FROM stars 
    JOIN people ON stars.person_id = people.id
    WHERE people.name = 'Chadwick Boseman'
)
ORDER BY ratings.rating DESC
LIMIT 5;
```

**Analysis:**
- Uses **subquery** to find Chadwick Boseman's person_id.
- **JOINs** three tables: movies, stars, ratings.
- **Filters** by actor using subquery result.
- **Orders** by rating (highest first) with LIMIT 5.
- Returns only movie titles as requested.



## 🚀 How to Use This Project

### **1. Database Setup:**
```bash
# Create and populate the database
sqlite3 movies.db < movies.db.sql
```
- Then, import CSV data from zip files from GUI.

### **2. Test Individual Queries:**
```bash
sqlite3 movies.db < 1.sql
sqlite3 movies.db < 11.sql
```

### **3. Verify Results:**
- Compare outputs against IMDb (note: ratings may differ due to data collection timing). 


---


---


 **Completion Status:** ✅ All 13 queries completed and validated.  \
 **Database:** SQLite (movies.db). \
 **Data Source:** IMDb subset (provided by CS50 - HarvardX).\
 **Edition:** 2025. \
 **Skills Level:** Intermediate to Advanced SQL.






