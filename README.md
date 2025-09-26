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
 <img width="714" height="413" alt="table1" src="https://github.com/user-attachments/assets/692d7ae1-87a9-43c4-9dd5-3bdf88b31540" />
 <img width="702" height="412" alt="table2" src="https://github.com/user-attachments/assets/a7b9a1f8-fa95-42f3-a17f-33915cba3afc" />
 <img width="704" height="413" alt="table3" src="https://github.com/user-attachments/assets/b4a5f417-ec68-4175-87d2-3075a36d1130" />
 <img width="701" height="415" alt="created_table" src="https://github.com/user-attachments/assets/ddeb7f4b-b63d-4a92-8547-9dd7dc7a2b73" />




ERD DIAGRAM


### Sample Data

Dataset includes **real-world 2023/24 Premier League data** for top performers:  
Erling Haaland, Cole Palmer, Alexander Isak, Ollie Watkins, Mohamed Salah.

<img width="702" height="414" alt="inserted_value" src="https://github.com/user-attachments/assets/9d40b883-d0e1-431e-ab39-9f4bc673d185" />

<img width="706" height="412" alt="inserted_value2" src="https://github.com/user-attachments/assets/e4ab12fb-c6ee-457e-bf91-244c9b054ed7" />
<img width="705" height="408" alt="inserted_value3" src="https://github.com/user-attachments/assets/0a688896-12c8-40f1-b43c-9a0f75034a7d" />


---

## 🧮 Window Functions Implementation

### 1. Ranking Functions

- **Use Case:** Player of the Season analysis
- Files: `ranking_query.sql`, `ranking_results.png`
- **Insight:** Multiple ranking methods show Cole Palmer as standout performer with perfect percentile rank.
<img width="730" height="415" alt="window_function_q1" src="https://github.com/user-attachments/assets/f377a847-7540-490a-b2ad-eea1ba4ccc18" />

---

### 2. Aggregate Functions with Framing

- **Use Case:** Player form analysis and consistency tracking
- Files: `aggregate_query.sql`, `aggregate_results.png`
- **Insight:** Running totals reveal season progress. 3-game averages smooth volatility → better form analysis.
<img width="730" height="415" alt="window_function_q1" src="https://github.com/user-attachments/assets/a6660a9d-7979-482c-94e8-2e5a28d5ae7e" />

---

### 3. Navigation Functions

- **Use Case:** Match-to-match performance trend analysis
- Files: `navigation_query.sql`, `navigation_results.png`
- **Insight:** Highlights volatility and tactical effects not visible in season totals.
<img width="730" height="415" alt="window_function_q1" src="https://github.com/user-attachments/assets/f56517ae-f8ca-4e78-a70a-4a0bc71f7b9f" />

---

### 4. Distribution Functions

- **Use Case:** Player valuation & contract analysis
- Files: `distribution_query.sql`, `distribution_results.png`
- **Insight:** Quartiles and cumulative distribution identify tiers and market inefficiencies.
<img width="762" height="421" alt="window_function_q4" src="https://github.com/user-attachments/assets/239b614c-eecb-41c5-916b-33221c36803e" />

---

## 📊 Results Analysis

### Descriptive Analysis: What Happened?
The analysis revealed clear performance tiers among Premier League players. Cole Palmer (Chelsea) emerged as the standout performer with an average rating of 8.26, placing him in the top performance quartile. Significant performance volatility was observed, with some players showing dramatic match-to-match fluctuations in goal output (-75% to -100% changes). The data also showed that high market value doesn't always correlate with consistent performance, revealing potential market inefficiencies.


### Diagnostic Analysis: Why Did It Happen?
The performance variations can be attributed to several factors: different tactical systems employed by various teams, the quality of opposition faced in consecutive matches, and the pressure of different competition contexts. Players like Erling Haaland showed that world-class reputation is often built on explosive match-winning performances that may be offset by quieter games. Team context also significantly influences performance consistency, with focal point attackers often showing more stable ratings.

### Prescriptive Analysis: What Should We Do Next?
Develop "Consistency Metrics" for player valuation that complement traditional stats like goals and assists

Create data-driven content series including "The Consistency Kings" and "On the Rise" player features

Implement performance alert systems that flag significant drops in moving average ratings for early intervention

Use quartile analysis in contract negotiations to ensure player compensation aligns with performance tiers

Develop opponent-specific performance analytics to better understand performance fluctuations contextually



---

## 📚 References

- [Oracle Documentation: Analytic Functions](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/Analytic-Functions.html)
- [Oracle SELECT Statement & Window Functions](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/SELECT.html)
- [MySQL 8.0 Window Functions](https://dev.mysql.com/doc/refman/8.0/en/window-functions.html)
- [Oracle Base: Analytic Functions](https://oracle-base.com/articles/misc/analytic-functions)
- [TutorialsPoint: SQL Window Functions](https://www.tutorialspoint.com/sql/sql-window-functions.htm)
- [W3Schools: SQL Window Functions](https://www.w3schools.com/sql/sql_window_functions.asp)
- [Stack Overflow: Practical Examples](https://stackoverflow.com/questions/tagged/window-functions)
-GeeksforGeeks: SQL Window Functions
-SQL Shack: Understanding SQL Window Functions
-Microsoft Docs: OVER Clause (Transact-SQL)
---

## 📝 Academic Integrity Statement

_"All sources were properly cited. Implementations and analysis represent original work.  
No AI-generated content was copied without attribution or adaptation.  
This work complies with AUCA’s academic integrity policies."_

---

Fatime Dadi Wardougou 25858



