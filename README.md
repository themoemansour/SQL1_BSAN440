# BSAN 440 - Assignment 1
---
## Assignment Overview
### **Database: `BSAN440_MovieDB.db`**
- Focus on the **Movies table** within this SQLite database.
- Write SQL queries to answer the following questions and include answers in **comments within the SQL file**.
- Clearly label each query with the corresponding question number.

### **Tasks & Queries**
1. **(5 pts) Count the total number of rows** in the `Movies` table.
2. **(5 pts) Count the number of distinct movies** in the `Movies` table.
3. **(5 pts) Count the number of movies released in 1996**.
4. **(5 pts) Count the number of movies released between 2000 and 2002 (inclusive)**.
   - ⚠️ **Hint:** The `year` column is stored as **text data**, not numbers.
5. **(5 pts) List all movies that start with “Harry”**.
6. **(10 pts) Create a new table `Movies1`**:
   - Copy all data from the `Movies` table.
   - Add an additional column:
     - Assign **“funny”** if the movie is listed as Comedy.
     - Assign **“scary”** if the movie is either Thriller or Horror.
     - Assign **NULL** if the movie does not fall into these categories.
7. **(5 pts) Use `GROUP BY` to count the number of scary or funny movies** in `Movies1`.
8. **(10 pts) Analyze handling of movies that belong to both Comedy and Horror/Thriller**:
   - Explain why they appear as **only funny or scary** in `Movies1`.
   - Create another table `Movies2`:
     - Like `Movies1`, but instead of categorizing movies as just “funny” or “scary”, assign **“scary and funny”** if the movie belongs to both Comedy and Horror/Thriller.

---

## Guidelines & Requirements
- **Database System:** SQLite
- **Code Formatting:**
  - Use proper **indentation and comments** for clarity.
  - Each query should be **labeled with the corresponding question number**.
  - Ensure correctness by testing queries before submission.

---

## Getting Started
1. **Load the database in DB Browser for SQLite**.
2. **Run and verify each query** before adding it to the `.sql` file.
3. **Include comments with answers** directly in your SQL file.
4. **Save and submit the `.sql` file`** following the submission guidelines.

---

## License & Academic Integrity
- **This assignment is for academic purposes ONLY.**


