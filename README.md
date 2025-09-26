# Database Development with PL/SQL – Assignment

**Course:** INSY 8311 – Database Development with PL/SQL  
**Instructor:** Eric Maniraguha  
**Assignment Date:** September 19, 2025  
**Deadline:** September 29, 2025 (11:59 PM)

---

## 📌 Business Problem Definition

### Business Context

- **Company Type:** Premier League Media Company
- **Department:** Sports Analytics & Digital Content
- **Industry:** Sports Media & Entertainment

### Data Challenge

Current player performance reporting only provides **basic season totals** and **static rankings**.  
We lack dynamic analytical capabilities to:

- Track player consistency
- Identify performance trends
- Segment players by performance value relative to cost

### Expected Outcome

Enable creation of **interactive fan features** such as:

- Player Form Guides
- Performance Comparison Tools
- Data-driven articles

These will help identify **market inefficiencies** and optimize **content strategy**.

### Success Criteria

- **Top 3 players by average rating per team** → `RANK()`
- **Running total of goals and 3-game performance metrics** → `SUM() OVER()`
- **Match-to-match performance growth percentage** → `LAG()`/ `LEAD()`
- **Player performance quartiles** → `NTILE(4)`
- **Cumulative performance distribution** → `CUME_DIST()`

---

## 🗄️ Database Schema

### Table Structure

- **Teams Table** → Stores Premier League team information
- **Players Table** → Contains player details and metadata
- **Player Performance Table** → Fact table with match-by-match statistics
  ![alt text](created_table-1.PNG)
  ![alt text](table1-1.PNG)
  ![alt text](table2-1.PNG)
  ![alt text](table3-1.PNG)

![text](<c:/Users/FATIME DADI/Music/erd_diagram.pdf>)

### Sample Data

Dataset includes **real-world 2023/24 Premier League data** for top performers:  
Erling Haaland, Cole Palmer, Alexander Isak, Ollie Watkins, Mohamed Salah.

![alt text](inserted_value-1.PNG)
![alt text](inserted_value2-1.PNG)
![alt text](inserted_value3-1.PNG)

---

## 🧮 Window Functions Implementation

### 1. Ranking Functions

- **Use Case:** Player of the Season analysis
- Files: `ranking_query.sql`, `ranking_results.png`
- **Insight:** Multiple ranking methods show Cole Palmer as standout performer with perfect percentile rank.

---

### 2. Aggregate Functions with Framing

- **Use Case:** Player form analysis and consistency tracking
- Files: `aggregate_query.sql`, `aggregate_results.png`
- **Insight:** Running totals reveal season progress. 3-game averages smooth volatility → better form analysis.

---

### 3. Navigation Functions

- **Use Case:** Match-to-match performance trend analysis
- Files: `navigation_query.sql`, `navigation_results.png`
- **Insight:** Highlights volatility and tactical effects not visible in season totals.

---

### 4. Distribution Functions

- **Use Case:** Player valuation & contract analysis
- Files: `distribution_query.sql`, `distribution_results.png`
- **Insight:** Quartiles and cumulative distribution identify tiers and market inefficiencies.

---

## 📊 Results Analysis

### Descriptive Analysis

- Clear **performance tiers** emerged.
- High market value ≠ consistent performance.

### Diagnostic Analysis

- Performance influenced by **tactics, opposition, and competition context**.
- **Team role** impacts player consistency.

### Prescriptive Analysis

- Develop **Consistency Metrics** for valuation
- Create **data-driven content series**
- Implement **performance alert systems**
- Apply **quartile analysis** in contracts
- Build **opponent-specific analytics**

---

## 📚 References

- [Oracle Documentation: Analytic Functions](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/Analytic-Functions.html)
- [Oracle SELECT Statement & Window Functions](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/SELECT.html)
- [MySQL 8.0 Window Functions](https://dev.mysql.com/doc/refman/8.0/en/window-functions.html)
- [Oracle Base: Analytic Functions](https://oracle-base.com/articles/misc/analytic-functions)
- [TutorialsPoint: SQL Window Functions](https://www.tutorialspoint.com/sql/sql-window-functions.htm)
- [W3Schools: SQL Window Functions](https://www.w3schools.com/sql/sql_window_functions.asp)
- [Stack Overflow: Practical Examples](https://stackoverflow.com/questions/tagged/window-functions)

---

## 📝 Academic Integrity Statement

_"All sources were properly cited. Implementations and analysis represent original work.  
No AI-generated content was copied without attribution or adaptation.  
This work complies with AUCA’s academic integrity policies."_

---

Fatime Dadi Wardougou 25858
